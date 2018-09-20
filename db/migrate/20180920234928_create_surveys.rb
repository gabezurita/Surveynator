class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :title
      t.text :description
      t.references :owner, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
