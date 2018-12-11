# == Schema Information
#
# Table name: exercises
#
#  id          :integer          not null, primary key
#  name        :string
#  bodypart_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Exercise < ApplicationRecord
  has_many :circuits, :dependent => :destroy
  belongs_to :bodypart
end
