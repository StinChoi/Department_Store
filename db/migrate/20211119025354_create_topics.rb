class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.text :body
      t.belongs_to :stores, null: false, foreign_key: true

      t.timestamps
    end
  end
end