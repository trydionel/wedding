require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Registry do
  before(:each) do
    @valid_attributes = {
      :url => "value for url",
      :title => "value for title",
      :description => "value for description"
    }
  end

  it "should create a new instance given valid attributes" do
    Registry.create!(@valid_attributes)
  end
end
