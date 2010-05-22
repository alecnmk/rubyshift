class AddDistanceToStation < ActiveRecord::Migration
  def self.up
    add_column :stations, :distance, :decimal, :scale => 3, :precision => 8
  end

  def self.down
    remove_column :stations, :distance
  end
end
