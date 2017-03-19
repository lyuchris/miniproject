class AdsController < ApplicationController
	def index
      @ads = Ad.all
    end

    def new
		@ad = Ad.new
	end

	def create
		@ad = Ad.new(ad_params)
		if @ad.save
			flash[:notice] = "新增成功"

            redirect_to ads_path
        else
            render :action => :new #new.html.erb
        end
	end

	def show
        @ad = Ad.find(params[:id])
    end


	private


	def ad_params
		params.require(:ad).permit(:name, :description, :price, :email, :img_url)
	end

end
