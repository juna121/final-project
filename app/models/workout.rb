# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date       :date
#

class Workout < ApplicationRecord
  
  validates :date, presence: true
  validates :user_id, presence: true
  
  belongs_to :user
  has_many :circuits, :dependent => :destroy
end
