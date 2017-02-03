class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :description
      t.json :key_value_pairs
      t.belongs_to :question

      t.timestamps
    end
  end
end
