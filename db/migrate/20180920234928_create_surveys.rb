class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :title
      t.text :description
      t.references :owner, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
