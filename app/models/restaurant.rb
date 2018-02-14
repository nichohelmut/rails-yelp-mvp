class Restaurant < ApplicationRecord
 has_many :reviews, dependent: :destroy

 CATEGORIES = %w(chinese italian japanese french belgian)

 validates :name, uniqueness: true, presence: true
 validates :address, presence: true
 validates :category, inclusion: { in: CATEGORIES }
end


# A restaurant must have at least a name and an address.
# The restaurant category should belong to a fixed list
# ["chinese", "italian", "japanese", "french", "belgian"].
