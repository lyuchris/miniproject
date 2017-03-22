class AdsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  before_action :set_ad, :only => [:show, :edit, :update, :destroy]
	def index
    @ads = Ad.page(params[:page]).per(3)
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
    @page_title = @ad.name
  end


  def edit
  end

  def update
    if @ad.update(ad_params)
      flash[:notice] = "編輯成功"
      redirect_to ad_url(@ad)
    else
      render :action => :edit
    end
  end

  def destroy
    @ad.destroy
    flash[:alert] = "刪除成功"
    redirect_to ads_path
  end

  def upvote
    @ad = Ad.find(params[:id])
    @ad.votes.create
    redirect_to(ads_path)
  end


	private


	def ad_params
		params.require(:ad).permit(:name, :description, :price, :email, :img_url)
	end

  def set_ad
    @ad = Ad.find(params[:id])
  end

end
