class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  ALLOWED_TYPES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ALLOWED_TYPES }


  #  resources :resturant do
  #   resources :comments, only: [ :index, :new, :create ]
  # end
end
