class Appointment
  @@all = []
  attr_accessor :patient, :date, :doctor

  def initialize(doctor, patient, date)
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end



  def self.all
    @@all
  end

end
