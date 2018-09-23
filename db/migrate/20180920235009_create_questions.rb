class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :type
      t.text :content
      t.integer :order
      t.references :survey, index: true
      t.references :response, index: true

      t.timestamps
    end
  end
end
