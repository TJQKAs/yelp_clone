class Review < ActiveRecord::Base
  belongs_to :restaurant
  has_many :endorsements, dependent: :destroy
  validates :rating, inclusion: (1..5)

end
