class Article < ActiveRecord::Base
  has_many :comments
  
# this must be singular
  belongs_to :author
# belongs_to must have foreign key, add on migration file

end
