class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :created_by
      t.boolean :private
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
