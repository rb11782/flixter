class User < ApplicationRecord
  has_many :courses
  has_many :enrollments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def enrolled_courses
    return enrollments.collect(&:course)
  end


  def enrolled_in?(course)
    enrolled_courses = enrollments.collect(&:course)
    return enrolled_courses.include?(course)
  end

end
