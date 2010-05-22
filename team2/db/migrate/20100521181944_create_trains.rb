class CreateTrains < ActiveRecord::Migration
  def self.up
    create_table :trains do |t|
      t.string :serial, :null => false, :default => ""
      t.string :status, :null => false, :default => ""
      t.time :start_time
      t.string :color, :null => false, :default => ""

      t.timestamps
    end
  end

  def self.down
    drop_table :trains
  end
end
