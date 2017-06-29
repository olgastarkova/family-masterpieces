class PoemsController < ApplicationController
	before_action :set_poem, only: [:show, :update, :destroy]

	def index
		@users = User.where(author: true)
	  	if params[:query]
	  		@poems = Poem.search_by_title_and_content(params[:query])
	  	else
	  		@poems = Poem.all
	  	end
	end

	def show
	end

	def new
		@poem = Poem.new
	end

	def create
		@poem = Poem.new(poem_params)
		@poem.user = current_user
		if @poem.save
			redirect_to poem_path(@poem)
		else
			render "poems/new"
		end
	end

	def edit
	end

	def update
    @poem.update(poem_params)
	end

	def destroy
    @poem.destroy
    render 'dashboard'
	end



	private

	def set_poem
		@poem = Poem.find(params[:id])
	end

	def poem_params
		params.require(:poem).permit(:title, :content, :year, :dedicated_to, :cover, :cover_cache)
	end

end
