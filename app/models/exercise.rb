class Exercise < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :muscle_group
end
