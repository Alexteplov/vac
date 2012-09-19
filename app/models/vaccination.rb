class Vaccination < ActiveRecord::Base
  attr_accessible :fact, :person_id, :plan, :vaccine_id
  belongs_to :vaccine
  belongs_to :person



end
