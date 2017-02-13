class CreateResultPages < ActiveRecord::Migration[5.0]
  def change
    create_table :result_pages do |t|
      t.string :title
      t.string :description
      t.string :image
      
      t.belongs_to :survey

      t.timestamps
    end
  end
end
