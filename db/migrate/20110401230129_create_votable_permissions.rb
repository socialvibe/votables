class CreateVotablePermissions < ActiveRecord::Migration
  def self.up
    create_table :votable_permissions do |t|
      t.integer :votable_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :votable_permissions
  end
end
