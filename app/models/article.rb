class Article < ActiveRecord::Base

	has_many :comments
	belongs_to :category
	has_many :cart_line_items
	
	validates_presence_of :title, :body, :publish_date
	validate :date_cant_be_lessthan_todays_date

	def date_cant_be_lessthan_todays_date
		if !self.publish_date.nil?
			if self.publish_date < Date.today
				self.errors.add(:publish_date, "Date Can't be less than today")
			end
		end

	end

end
