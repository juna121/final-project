# == Schema Information
#
# Table name: circuits
#
#  id          :integer          not null, primary key
#  workout_id  :integer
#  exercise_id :integer
#  reps        :integer
#  sets        :integer
#  weight      :float
#  unit        :string
#  note        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Circuit < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise
end
