class Exercise < ActiveRecord::Base
  validates :name, presence: true, unique: true
end
