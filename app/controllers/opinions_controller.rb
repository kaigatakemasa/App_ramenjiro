class OpinionsController < ApplicationController

	def new
		@opinion = Opinion.new
	end

	def create
		#binding.pry
		@opinion = Opinion.new(opinion_params)
		if @opinion.save
			flash[:notice] = "貴重なご意見ありがとうございます！！"
			redirect_to shops_path
		else
			render :new
	    end
	end

	def index
		@opinions = Opinion.all.page(params[:page]).per(20)
		@shops = Shop.all
		#@opinion = Opinion.find(params[:id])
	end

	def show
		@opinion = Opinion.find(params[:id])
	end

	def about
	end

	def beginner
		
	end

	private
    def opinion_params
    	params.require(:opinion).permit(:opinion_title, :opinion_text)
    end
end
