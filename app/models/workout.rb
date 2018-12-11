# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Workout < ApplicationRecord
  belongs_to :user
  has_many :circuits, :dependent => :destroy
end
