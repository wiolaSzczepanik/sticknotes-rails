class EntriesController < ApplicationController
	before_action :find_entry, only: [:show, :edit, :update, :destroy]

	def index
		@entries = Entry.all
	end

	def show
	end

	def new
		@entry = Entry.new
	end

	def create
		entry = Entry.create(entry_params.merge(current_date))
		redirect_to entry_path(entry)
	end

	def edit
	end

	def update
		@entry.update(entry_params)
		redirect_to entry_path(@entry)
	end

	def destroy
		@entry.destroy
		redirect_to root_path
	end

private
	def entry_params
		params.require(:entry).permit(:title, :contents)
	end

	def current_date
		{date: Time.now}
	end

	def find_entry
		@entry = Entry.find(params["id"])
	end
end
