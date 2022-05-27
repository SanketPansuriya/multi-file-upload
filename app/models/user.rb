class User < ApplicationRecord
  has_many_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
  end
end
