class PagesController < ApplicationController

  def home 
    @username = 'caseyli'
    @user_balance = 240.0
    @user_due_date = 'January 30th, 2015'
    @usage_values = [40, 60, 80, 20, 30, 50, 20]
  end

end