class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
  end

  def self.lowest_rating
    Show.order("rating ASC").limit(1).first.rating
  end

end
