# -*- encoding : utf-8 -*-
require 'spec_helper'

describe 'Registering click' do

  it 'should register the click', :js => true do
    visit '/'
    click_button 'Click'
    page.should have_content('Last click was at:')
  end
  
end
