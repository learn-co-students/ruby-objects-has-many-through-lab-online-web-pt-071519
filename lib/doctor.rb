class Doctor 
  
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
  def appointments
   Appointment.all { |appointment| appointment.doctor == self } 
  end 
  
  def new_appointment(patient, date)
 Appointment.new(date, patient, self)
 #makig a new appointmet for the doctor that is being called.  There are three arguments used
  end 
  
  def patients
     appointments.map do |x|
   x.patient  
  end 
end 
  
end 