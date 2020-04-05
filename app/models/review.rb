class Review < ApplicationRecord
  belongs_to :user
  belongs_to :title
  belongs_to :platform
end
