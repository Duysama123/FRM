class UserAccount < ApplicationRecord
  has_many :recipes  # Một UserAccount có nhiều recipes
end
