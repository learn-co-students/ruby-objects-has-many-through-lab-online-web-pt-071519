class Patient
  
  attr_accessor :name
  
  @@all = []
  
 def initialize(name)
   @name = name
   @@all << self
 end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
      Appointment.all.select do |time| 
      time.patient == self
    end
  end
  
  def doctors
   doctor = []
    appointments.each do |doc|
      doctor << doc.doctor
    end
    doctor
  end
  
end