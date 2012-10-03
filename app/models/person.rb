class Person < ActiveRecord::Base
  has_many :vaccinations
  attr_accessible :birthday, :card_number, :first_name, :last_name, :rank, :service_place, :surname


  # Для будующей машины состояний
  # state_machine :state, :initial => :pending do
  #   event :apply do
  #     transition :pending => :waiting
  #   end
  # end

  def name
    "#{last_name} #{first_name} #{surname}"
  end

  def warning?
  	return true if vaccinations.empty?

  end

  def error?
    vaccinations.map(&:plan).each do |plan|
      if plan
        return true if plan < DateTime.now
      end
    end
  end

  # def success?
  #   vaccinations.map(&:plan).each do |plan|
      

  

end
