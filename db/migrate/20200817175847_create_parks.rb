class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.integer :city_id
      t.string :name
      t.string :address
      t.string :contact
      t.integer :likes
      t.string :image_url
      t.string :activities

      t.timestamps
    end
  end
end
