class HomeController < ApplicationController
  
  def index
    # @cafes = Cafe.where("name Like ? AND scrap_count >= ?", "%star%", "10")
    # @overnight = Cafe.where(overnight: true)
    # @outlet = Cafe.where(overnight: true, outlet: true)
     
    # @scrap_count = Cafe.where("scrap_count >= 10")
    # @cafe =Cafe.where("time Like ?", "%1%").take.time
    # @cafes = Cafe.where("name Like ?", "%a%")
  end
  def search
    outlet = Cafe.where(overnight: to_boolean(params[:overnight]), outlet: to_boolean(params[:outlet]))
    # outlet = Cafe.all
    # redirect_to '/home/index'
    
    render :json => {
      :cafes => outlet
    }
  end
  
  def map
    
  end
  
   def to_boolean(str)
      str == 'true'
   end
end
