class Review < ActiveRecord::Base

  belongs_to :article

  def self.average_rating
    average(:rating)
    
  end

end
