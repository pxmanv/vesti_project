class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :users, class_name: "User", foreign_key: "stylist_id"
  belongs_to :stylist, class_name: "User", foreign_key: "stylist_id"

end
