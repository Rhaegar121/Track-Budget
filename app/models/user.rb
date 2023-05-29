class User < ApplicationRecord
    has_many :categories, dependent: :destroy
    has_many :purchases, dependent: :destroy
end
