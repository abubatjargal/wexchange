class DiscoverController < ApplicationController
  def show

    if params[:search_query].nil? && params[:tags].nil?
      @users = User.all
    else
        query=params.fetch(:search_query) || "*"
       @users = User.search(params[:search_query], fields: ["first_name"], suggest: true)
       if @users.size==0
         @users=User.all
       end
    end
    respond_to do |format|
      format.js
      format.html
   end
  end

  def index
    render 'main'
  end




  # def recommend
  #   tags=current_user
  #   list=[]
  #   current_user.portfolios.each do |portfolio|
  #     portfolio.tags.each do |tag|
  #       list<< tag
  #     end
  #   end
  #   @users=User.tagged_with(tags) && User.tagged_with(list)
  # end



end
