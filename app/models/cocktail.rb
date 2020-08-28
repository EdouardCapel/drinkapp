class Cocktail < ApplicationRecord
  belongs_to :glass

  has_many :doses,  dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :restrict_with_exception
end
