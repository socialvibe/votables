class CreateVotables < ActiveRecord::Migration
  def self.up
    create_table :votables do |t|
      t.string :name
      t.integer :votes_per_round
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :votables
  end
end
