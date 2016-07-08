class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, :through => :post_tags
  accepts_nested_attributes_for :tags, reject_if: proc {|attributes| attributes[:name].blank?}
  validates_presence_of :name, :content

  # def tags_attributes=(stuff)
  # 	binding.pry
  # 	if stuff[0].present?
  # 		binding.pry
  # 		stuff.values.each {|tag| self.tags.build(tag) if tag[:name].present?}
  # 	end

  # end
end
