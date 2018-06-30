class WelcomeController < ApplicationController
  def index
  	@entries = Entry.last
  	@actual_year = Time.now.year
  end
end
