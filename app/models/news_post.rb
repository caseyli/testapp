class NewsPost < ActiveRecord::Base

  validates :title, presence: true

end
