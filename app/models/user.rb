class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
    has_many :categories, dependent: :destroy
    has_many :purchases, dependent: :destroy

    validates :name, presence: true, length: { minimum: 2, maximum: 50 }, allow_blank: false
end
