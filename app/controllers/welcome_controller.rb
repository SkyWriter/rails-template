class WelcomeController < ApplicationController
  def index
    last_click = Click.last
    @last_click_id = last_click.try(:id)
    @last_click_moment = last_click.try(:created_at)
  end

  def click
    Click.create!
    redirect_to :root
  end
end