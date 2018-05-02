class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    #Show.order("rating DESC").limit(1).first
    Show.where("rating = ?", highest_rating).first
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.where("rating = ?", lowest_rating).first
  end

  def self.ratings_sum
    Show.sum('rating')
  end

  def self.popular_shows
    Shows.where("rating > 5")

end
