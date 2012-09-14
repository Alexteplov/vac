class Vaccine < ActiveRecord::Base
  has_many :vaccinations
  attr_accessible :fact, :name, :periodic, :plan, :planning
end
