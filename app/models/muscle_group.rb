class MuscleGroup < ActiveRecord::Base
  validates :name, presence: true
end
