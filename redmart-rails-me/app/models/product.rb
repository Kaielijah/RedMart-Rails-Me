class Product < ApplicationRecord

  has_many :microposts
  def feed
    Micropost.where("user_id = ?", id)
  end
end
