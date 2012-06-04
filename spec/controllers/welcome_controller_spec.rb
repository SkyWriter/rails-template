require 'spec_helper'

describe WelcomeController do

  describe "index" do

    it "should return nothing if there have been no last click" do
      Click.stub!(:last => nil)
      
      get :index

      assigns[:last_click_id].should == nil
      assigns[:last_click_moment].should == nil
    end
    
    it "should return the last click" do
      last_click = stub(:id => 1, :created_at => Time.at(0))
      Click.stub!(:last => last_click)
      
      get :index

      assigns[:last_click_id].should == last_click.id
      assigns[:last_click_moment].should == last_click.created_at
    end

  end

  describe "click" do
    
    it "should register the click redirect to the root page" do
      Click.should_receive(:create!)

      post :click

      response.should redirect_to('/')
    end

  end

end
