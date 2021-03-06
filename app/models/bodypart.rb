# == Schema Information
#
# Table name: bodyparts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bodypart < ApplicationRecord
  validates :name, presence: true
  has_many :exercises, :dependent => :destroy
  
end
