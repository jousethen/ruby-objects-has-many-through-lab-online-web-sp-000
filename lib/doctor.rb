class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end  
  
  def patients
    arr = self.appointments.collect {|app| app.patient}
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
     new_app_obj = Appointment.new(date, patient, self)
   end
end