class Vaccine < ActiveRecord::Base
  attr_accessible :fact, :name, :periodic, :plan, :planning
end
