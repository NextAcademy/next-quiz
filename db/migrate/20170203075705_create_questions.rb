class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :description
      t.belongs_to :survey

      t.timestamps
    end
  end
end
