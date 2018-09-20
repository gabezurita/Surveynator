class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.text :content
      t.string :letter
      t.string :option
      t.integer :rating, null: false, default: 0
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
