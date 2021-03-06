class PortfoliosController < ApplicationController

  def index
    @portfolio = current_user.portfolios
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    @portfolio.user = current_user
    if @portfolio.save!
      if !params[:images].nil?
        params[:images].each do |image|
            @portfolio.photos.create!(:image => image)
        end
      end
      redirect_to current_user # change hardcoding
    else
      redirect_to current_user # TEMP: To avoid crashing out on failture to create
    end
  end

  def upload_images
    @photo=Portfolio.find(params[:id]).photos.build(photo_params)
    @photo.save!
    redirect_to current_user
  end

  def addPhoto
    @portfolio = Portfolio.find(params[:id])
    @photo = @portfolio.photos.new
    @photo.imageable_id = @portfolio.id
  end


  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def delete
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
    redirect_to current_user
  end

  def update
    @portfolio = Portfolio.find_by(id: params[:id])
    if @portfolio.update_attributes(portfolio_params)
      redirect_to current_user
    else
      render :controller => :portfolios, :action => :new
    end
  end

    private
    def portfolio_params
      params.require(:portfolio).permit(:name, :description, :long_description, :content_type, :user_id, tag_list: [], photos_attributes: [:image])
    end

    def get_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:portfolio_id, :image, :portfolio_name)
    end

end
