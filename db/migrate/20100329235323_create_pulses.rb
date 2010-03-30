class CreatePulses < ActiveRecord::Migration
  def self.up
    create_table :pulses do |t|
      t.string :title
      t.string :synopsis
      t.text :description
      t.datetime :published_at
      t.datetime :expired_at
      t.datetime :started_at
      t.datetime :last_pulsed_at

      t.timestamps
    end
  end

  def self.down
    drop_table :pulses
  end
end
