class Show < ActiveRecord::Base

  def self.highest_rating
    Show.order("rating DESC").limit(1).first.rating
  end

  def self.lowest_rating
    Show.order("rating ASC").limit(1).first.rating

end
