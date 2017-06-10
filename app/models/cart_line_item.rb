class CartLineItem < ActiveRecord::Base

	belongs_to :article
	belongs_to :user
	validates_presence_of :article_id,:user_id,:quantity
	validates_numericality_of :article_id,:user_id
	validates_numericality_of :quantity, greater_than: 0
end
