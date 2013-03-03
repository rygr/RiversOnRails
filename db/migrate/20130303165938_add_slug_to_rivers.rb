class AddSlugToRivers < ActiveRecord::Migration
  def change
    add_column :rivers, :slug, :string
    add_index :rivers, :slug
  end
end
