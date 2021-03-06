class Url < ActiveRecord::Base
  attr_accessible :link, :shortened

  belongs_to :user

  validates :shortened, :presence => true, :uniqueness => true
  validates :link, :presence => true

  def shorten
      self.shortened = make_token
  end

	def make_token
	  ("%d%d" % [rand(100), Time.now.to_i]).to_i.to_s(36)
	end

  def lookup_by_shortened(x)
      where(:shortened => x).first
  end


      
end
