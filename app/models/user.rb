class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

    has_many :categories, dependent: :destroy
    has_many :purchases, dependent: :destroy

    attr_accessor :unconfirmed_email

    validates :name, presence: true, length: { minimum: 2, maximum: 50 }, allow_blank: false
end
