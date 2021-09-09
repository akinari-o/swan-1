class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :nickname
          validates :cigarette, format: {with: /\A[0-9]+\z/}
          validates :price, format: {with: /\A[0-9]+\z/}
         end
end
