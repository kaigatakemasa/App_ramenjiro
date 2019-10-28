class ShopsController < ApplicationController

	def new
	    @shop = Shop.new
	    #@shop.shop_images.build
	end

	def create
		@shop = Shop.new(shop_params)
		if @shop.save
		   redirect_to shops_path
		else
	       render :new

        end
	end

    def edit
        @shop = Shop.find(params[:id])
    end

	def update
        @shop = Shop.find(params[:id])
        if @shop.update(shop_params)
           redirect_to shop_path(@shop.id)
        else
           render :edit
        end
	end

	def index
		@shops = Shop.all
		@news = News.first(5)
		#@shop = Shop.find(params[:id])
	end

	def show
		@shop = Shop.find(params[:id])
		@shop_image = ShopImage.find_by(shop_id: @shop.id)
	end

private

	def shop_params
		params.require(:shop).permit(
			:shop_name,:shop_address,:twitter_url,:map_url,:daytime_department,:night_department,:shop_information,:shop_image,:postal_code,:regular_holiday)

	end
end
