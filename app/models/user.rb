class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :progression
  
  after_create_commit :create_progression
  
  def create_progression
      Progression.create! user:self, day: 1, weeks: 1, benchpress: 40, powerclean: 40, squats: 40, deadlift: 40, overheadpress: 40
  end
  
end
