class CreateOptions < ActiveRecord::Migration
  def self.up
    create_table :options do |t|
      t.integer :votable_id
      t.string :name
      t.string :description, :limit => 2000

      t.timestamps
    end
    add_index :options, :votable_id
  end

  def self.down
    drop_table :options
  end
end
