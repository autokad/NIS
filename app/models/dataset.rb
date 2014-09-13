class Dataset < ActiveRecord::Base
  belongs_to :user
  has_many :dataunits, dependent: :destroy
  has_many :maps, dependent: :destroy
  validates :user_id, presence: true
end
