class PoemsController < ApplicationController
	before_action :set_poem, only: [:show, :edit, :update, :destroy]
	skip_before_action :authenticate_user!, only: [ :index, :show ]

	def index
		@poem = Poem.new
		@poems = policy_scope(Poem).order(created_at: :desc)
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
		authorize(@poem)
		@users = User.where(author: true)
	end

	def create
		@poem = Poem.new(poem_params)
		authorize @poem
		if @poem.save
			redirect_to poem_path(@poem), notice: 'Ваш шедевр был успешно добавлен!'
		else
			render "poems/new"
		end
	end

	def edit
	end

	
	def update
    	if @poem.update(poem_params)
    		redirect_to @poem, notice: 'Ваш шедевр был успешно изменён!'
    	else
    		render :edit
    	end
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
		authorize @poem
	end

	def poem_params
		params.require(:poem).permit(:title, :content, :user_id, :year, :dedicated_to, :cover, :cover_cache)
	end

end
