class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
           has_many :currencies
           has_many :portfolios, through: :currencies
end