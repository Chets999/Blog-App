class Comment < ActiveRecord::Base

belongs_to :article
belongs_to :user
validates_presence_of :title,:body,:article_id
#validates_uniqueness_of :title, :article_id
#validates_numericality_of :article_id

end
