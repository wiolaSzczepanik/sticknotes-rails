class WelcomeController < ApplicationController
  def index
  	@entries = Entry.last || Entry.new
  	@actual_year = Time.now.year
  end
end
