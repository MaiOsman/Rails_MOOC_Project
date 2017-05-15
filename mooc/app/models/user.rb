class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         cattr_accessor :current_user
  belongs_to :role
  has_many  :courses
  has_many  :comments
  mount_uploader :image, ImageUploader
  
  def admin?
    current_user.role.name == "admin"
  end

  def instructor?
    # puts current_user.role
     current_user.role.name == "instructor"
  end

  def regular?
    current_user.role.name == "regular"
  end

  def check_permision?(course)
    # puts course.user_id
    course.user_id == current_user.id
  end

end
