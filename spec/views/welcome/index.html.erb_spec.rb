require "spec_helper"

describe "welcome/index.html.erb" do

	it "should render last click information" do
    assign(:last_click_moment, Time.at(0))
    assign(:last_click_id, 1)

		render

    rendered.should have_content("Last click was at: 01-01-1970 03:00 (ID: 1)")
	end

  it "should render zero click information when there was no clicks" do
    assign(:last_click_moment, nil)
    assign(:last_click_id, nil)

    render

    rendered.should have_content("There have been no clicks")
  end

end