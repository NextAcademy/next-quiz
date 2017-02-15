class CreateOutcomes < ActiveRecord::Migration[5.0]
  def change
    create_table :outcomes do |t|
      t.string :title
      t.string :description
      t.belongs_to :survey

      t.timestamps
    end
  end
end
