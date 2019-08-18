class Appointment 
  
  #attr_reader :patient 
  attr_accessor :date, :doctor, :patient
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @patient = patient 
    @date = date 
    @doctor = doctor
    @@all << self 
    end  
    
    def self.all  #(x,y) 
      @@all 
    end 
    
   # def patient
    #  Patient.all.select {|patient| patient.appointment == self}
   # end 
    
   # def doctor(doctor)
   #   Doctor.all.select {|doctor| doctor.new_appointment == self}
   # end 
    
  
end 