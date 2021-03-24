class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :event_users, dependent: :destroy #userを削除すれば関連するイベントも削除される
  has_many :events, through: :event_users 
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end