class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :recipes, dependent: :destroy
  has_many :foods, dependent: :destroy

<<<<<<< HEAD
  validates :first_name, presence: { allow_blank: false, message: 'Please input your first name' }
  validates :last_name, presence: { allow_blank: false, message: 'Please input your last name' }
=======
  # validates :first_name, presence: { allow_blank: false, message: 'Please supply a user name' }
>>>>>>> 4c7ca9b870662fba2cefc1f51c83d5865fc2bd44
end
