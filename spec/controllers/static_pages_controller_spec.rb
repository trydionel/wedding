require 'spec_helper'

describe StaticPagesController do

  #Delete these examples and add some real ones
  it "should use StaticPagesController" do
    controller.should be_an_instance_of(StaticPagesController)
  end


  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end
end
