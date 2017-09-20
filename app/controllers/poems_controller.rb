class PoemsController < ApplicationController
	before_action :set_poem, only: [:show, :edit, :update, :destroy]

	def index
		@poem = Poem.new
		@users = User.where(author: true)
	  	if params[:query]
	  		@poems = Poem.search_by_title_and_content(params[:query])
	  	elsif params[:poem]
	  		@poems = Poem.where(year: params[:poem])
	  	else
	  		@poems = Poem.all
	  	end
	end

	def show
	end

	def new
		@poem = Poem.new
		@users = User.where(author: true)
	end

	def create
		@poem = Poem.new(poem_params)
		# @poem.user = current_user
		if @poem.save
			redirect_to poem_path(@poem)
		else
			render "poems/new"
		end
	end

	def edit
		@users = User.where(author: true)	
	end

	def update
    	@poem.update(poem_params)
	end

	def destroy
    	@poem.destroy
	end



	# def filter
	# 	@poem = Poem.new
	# 	@poems = Poem.where('extract(year from year) = ?', 2017)
	# 	#@poems = Poem.where('extract(year from year) = ?', 2015)
	# 	redirect_to poems_path
	# end



	private

	def set_poem
		@poem = Poem.find(params[:id])
	end

	def poem_params
		params.require(:poem).permit(:title, :content, :user, :year, :dedicated_to, :cover, :cover_cache)
	end

end
