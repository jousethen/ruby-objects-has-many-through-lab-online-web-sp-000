class Patient
  @@all = []
  attr_accessor :name, :date, :doctor
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment (date, doctor)
    Appointment.new(date,doctor)
  end
  
  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end
  
  def doctors
     arr = self.appointments.collect {|app| app.doctor}
  end
end