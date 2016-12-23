class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.integer :user_id
      t.belongs_to :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
