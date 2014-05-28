class Detail < ActiveRecord::Base
	validates :priceNumber, length: {maximum: 3}, :inclusion => 1..999
	validates_presence_of :title, :description, :groupSize, :priceNumber, :pricePer,:durationNumber,:durationUnit
	has_many :programs, :dependent => :destroy
	accepts_nested_attributes_for :programs, :allow_destroy =>true
	belongs_to :category
end
