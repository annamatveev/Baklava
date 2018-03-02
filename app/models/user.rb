class User < ActiveRecord::Base
  has_many :photos, dependent: :destroy
  has_many :guesses, dependent: :destroy
end
