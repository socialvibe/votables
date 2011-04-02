class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :option_id
      t.integer :user_id
      t.integer :round_id

      t.timestamps
    end
    add_index :votes, :round_id
    add_index :votes, :user_id
  end

  def self.down
    drop_table :votes
  end
end
