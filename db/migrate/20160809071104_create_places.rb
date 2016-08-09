class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string  :name
      t.text  :url
      t.text  :image
      t.boolean :wifi
      t.boolean :outlet

      t.timestamps
    end
  end
end
