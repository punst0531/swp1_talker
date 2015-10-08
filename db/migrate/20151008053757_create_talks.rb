class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.text :usertalk
      t.text :bottalk
      t.timestamps null: false
    end
  end
end
