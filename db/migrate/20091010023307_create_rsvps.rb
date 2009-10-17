class CreateRsvps < ActiveRecord::Migration
  def self.up
    create_table :rsvps do |t|
      t.string :name
      t.integer :guest_count
      t.integer :phone
      t.boolean :attending
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :rsvps
  end
end
