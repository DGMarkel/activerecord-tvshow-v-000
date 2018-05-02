class Show < ActiveRecord::Base

  def self.highest_rating
    Show.order("rating DESC").limit(1).first
  end

end
