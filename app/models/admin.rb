class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :events, dependent: :destroy #adminを削除すれば関連するイベントも削除される

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
