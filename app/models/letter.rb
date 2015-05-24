class Letter < ActiveRecord::Base
	before_save :default_values
	validates :content, presence: true
	validates :from, presence: true
	validates :image_url, presence: true


  def default_values
  	self.content = '' if self.content.nil?
    self.from = 'Anonymous' if self.from.nil?
  	self.image_url = '' if self.image_url.nil?
  	puts "#{self.content} #{self.from}  #{self.image_url}"
   end
end
