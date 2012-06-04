require 'spec_helper'

describe Click do

  it "should order clicks by the creation date" do
    Click.make!
    sleep 1
    Click.make!

    Click.first.created_at.should < Click.last.created_at
  end
  
end
