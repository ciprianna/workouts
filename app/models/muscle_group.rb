class MuscleGroup < ActiveRecord::Base
  validates :name, presence: true
  has_many :exercises
end
