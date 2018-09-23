class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :letter
      t.string :option
      t.references :question, index: true

      t.timestamps
    end
  end
end
