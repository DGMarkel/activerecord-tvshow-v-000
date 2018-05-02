class Show < ActiveRecord::Base

  def highest_rating
    Show.order("rating DESC").limit(1)
  end
  
end
