class CreateStations < ActiveRecord::Migration
  def self.up
    create_table :stations do |t|
      t.string :color, :default => "", :null => false
      t.float :lat, :default => 0, :null => false
      t.float :lng, :default => 0, :null => false
      t.string :name, :default => "", :null => false
      t.integer :connected_id, :default => 0, :null => false
      t.integer :external_id, :default => 0, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :stations
  end
end
