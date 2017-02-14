class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
 # #9
     @advertisement = Advertisement.new
     @advertisement.title = params[:advertisement][:title]
     @advertisement.body = params[:advertisement][:body]
     @advertisement.price = params[:advertisement][:price]

 # #10
     if @advertisement.save
 # #11
       flash[:notice] = "Ad was saved."
       redirect_to @advertisement
     else
 # #12
       flash.now[:alert] = "There was an error saving the ad. Please try again."
       render :new
     end
   end

end
