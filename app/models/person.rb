class Person < ActiveRecord::Base
  attr_accessible :birthday, :card_number, :first_name, :last_name, :rank, :service_place, :surname
end
