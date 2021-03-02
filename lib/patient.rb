class Patient
  @@all = []
  attr_accessor :name, :date, :doctor
  
  def initialize(name, date, doctor)
    @name = name
    @date = date
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointments.all.select do |app|
      app.patient == self
    end
  end
  
  def doctors
     arr = self.appointments.collect {|app| app.doctor}
  end
end