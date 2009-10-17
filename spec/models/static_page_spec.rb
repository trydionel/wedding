require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe StaticPage do
  before(:each) do
    @valid_attributes = {
      :href => "value for href",
      :content => "value for content"
    }
  end

  it "should create a new instance given valid attributes" do
    StaticPage.create!(@valid_attributes)
  end
end
