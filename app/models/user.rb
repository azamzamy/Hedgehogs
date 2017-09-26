class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save :default_values
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         validates :password, confirmation: true
         validates :email, presence: true, on: :create  


  def default_values
    self.followers ||= 0 # note self.status = 'P' if self.status.nil? might be safer (per @frontendbeauty)
    self.following ||= 0
    self.upvotes ||= 0
    self.score ||= 0
    self.level ||= 1
  end

  

end
