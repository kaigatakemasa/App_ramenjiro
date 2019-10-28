class NewsController < ApplicationController

	def new
		@news = News.new

	end

	def create
		@news = News.new(news_params)
		if @news.save
		   redirect_to news_path(@news.id)
		else
		   render :new
		end
	end

	def index
		@newses = News.all.page(params[:page]).per(9)
	end

	def show
		@news = News.find(params[:id])
	end

	def edit
		@news = News.find(params[:id])

	end

	def update
		@news = News.find(params[:id])
		if @news.update(news_params)
		   redirect_to news_path(@news.id)
		else
		   render :new
		end
	end

	def destroy
		@news = News.find(params[:id])
		if @news.destroy
		redirect_to news_index_path
	    end
	end

private

    def news_params
    	params.require(:news).permit(
    		:news_title,:latest_news)

    end


end
