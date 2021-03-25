class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :event, through: :event_users 
  has_many :event_users #userを削除すれば関連するイベントも削除される
 
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end