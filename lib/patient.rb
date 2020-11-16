class Patient

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appt| appt.patient == self} #has many
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end 

    def doctors
        appointments.map {|appt| appt.doctor} #has many through songs
    end

end