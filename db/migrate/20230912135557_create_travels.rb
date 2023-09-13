class CreateTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :travels do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.string :image_url

      t.timestamps
    end
  end
end
