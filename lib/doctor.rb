class Doctor

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(name, date)
    Appointment.new(self, name, date)
  end
  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end
  def patients
    appointments.map {|a| a.patient}
  end

end
