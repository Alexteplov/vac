class Person < ActiveRecord::Base
  has_many :vaccinations
  attr_accessible :birthday, :card_number, :first_name, :last_name, :rank, :service_place, :surname

  def name
    "#{last_name} #{first_name} #{surname}"
  end

end
