class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # , :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  attr_accessor :login
  attr_accessible :login

  # attr_accessible :title, :body

  has_many :urls

  def self.find_first_by_auth_conditions(warden_conditions)
	  conditions = warden_conditions.dup
	  login = conditions.delete(:login).downcase
	  where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  end
end
