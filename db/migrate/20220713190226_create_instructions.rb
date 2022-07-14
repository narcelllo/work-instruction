class CreateInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :instructions do |t|
      t.string :title 
      t.string :content
      t.string :url_image_video
      t.string :work_sector
      t.integer :sector_number

      t.timestamps
    end
  end
end
