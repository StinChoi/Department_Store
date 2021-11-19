class Store < ApplicationRecord
  has_many :topics, dependent: :destroy
end

