class CreateRounds < ActiveRecord::Migration
  def self.up
    create_table :rounds do |t|
      t.integer :votable_id
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :number
      t.integer :allowed_winners

      t.timestamps
    end
    add_index :rounds, :votable_id
  end

  def self.down
    drop_table :rounds
  end
end
