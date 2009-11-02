class FixPhoneNumberOnRsvps < ActiveRecord::Migration
  def self.up
    change_column :rsvps, :phone, :string
  end

  def self.down
    change_column :rsvps, :phone, :integer
  end
end
