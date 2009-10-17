require 'spec_helper'

describe Photo do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :image_file_name => "value for image_file_name",
      :image_file_size => 1,
      :image_content_type => "value for image_content_type",
      :image_updated_at => Time.now,
      :approved => false
    }
  end

  it "should create a new instance given valid attributes" do
    Photo.create!(@valid_attributes)
  end
end
