class TeamsController < ApplicationController
  before_action :set_team,only: [:edit,:update,:destroy]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    if @team.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @team.update!(team_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @team.destroy!
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name,:position,:description,:facebook,:twitter,:github)
  end
end
