require 'spec_helper'

describe "/registries/index" do
  before(:each) do
    render 'registries/index'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/registries/index])
  end
end
