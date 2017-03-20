class AdsController < ApplicationController
	def index
      @ads = Ad.all
    end

    def new
		@ad = Ad.new
	end

	def create
		@ad = Ad.new(ad_params)
		@ad.save
		redirect_to ads_path
        
	end

	def show
        @ad = Ad.find(params[:id])
    end

    def edit
    	@ad = Ad.find(params[:id])
    end

    def update
        @ad = Ad.find(params[:id])
        @ad.update(ad_params)
            
        redirect_to ad_url(@ad)
        

    end

    def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    
  end


	private


	def ad_params
		params.require(:ad).permit(:name, :description, :price, :email, :img_url)
	end

end
