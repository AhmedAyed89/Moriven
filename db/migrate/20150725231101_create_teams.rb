class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :position
      t.string :description
      t.string :facebook
      t.string :twitter
      t.string :github

      t.timestamps null: false
    end
  end
end
