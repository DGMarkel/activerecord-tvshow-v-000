class Show < ActiveRecord::Base

  def self.highest_rating
    show = Show.order("rating DESC").limit(1)
    show.rating
  end

end
