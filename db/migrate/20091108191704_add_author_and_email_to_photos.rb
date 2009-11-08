class AddAuthorAndEmailToPhotos < ActiveRecord::Migration
  def self.up
    add_column :photos, :author, :string
    add_column :photos, :email, :string
  end

  def self.down
    remove_column :photos, :email
    remove_column :photos, :author
  end
end
