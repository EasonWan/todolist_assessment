class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :photo
      t.string :location
      t.integer :status
      t.date :date
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
