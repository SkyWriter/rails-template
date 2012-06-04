require 'spec_helper'

describe WelcomeHelper do

  it "should format the date correctly" do
    helper.format_date(Time.at(0)).should == "01-01-1970 03:00" 
  end

end
