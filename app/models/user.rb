class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, authentication_keys: [:username]
  
  validates :username, :fullname, presence: true
  validates :username, uniqueness: true

  

  has_many :roles
end
