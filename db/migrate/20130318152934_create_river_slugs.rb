class CreateRiverSlugs < ActiveRecord::Migration
  def change
    create_table :river_slugs do |t|
      t.string :slug
      t.string :river_id

      t.timestamps
    end
  end
end
