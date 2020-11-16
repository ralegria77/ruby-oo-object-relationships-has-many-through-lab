class Doctor

    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name
        @patients = []
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self} #has many
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 

    def patients
        appointments.map {|appt| appt.patient} #has many through songs
    end


end