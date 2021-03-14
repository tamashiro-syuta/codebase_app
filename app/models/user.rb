class User < ApplicationRecord

  # 1対多のリレーション付け
  has_many :posts, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
  
  validates :username, presence: true, length: { maximum: 50 }

end
