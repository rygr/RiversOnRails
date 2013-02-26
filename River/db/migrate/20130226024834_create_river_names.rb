class CreateRiverNames < ActiveRecord::Migration
  def change
    create_table :river_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
