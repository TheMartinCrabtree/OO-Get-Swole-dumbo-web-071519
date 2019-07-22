class Lifter
    
  attr_reader :name, :lift_total
    @@all = []

    def initialize(name, lift_total)
      @name = name
      @lift_total = lift_total


      @@all << self
    end

    def self.all
      @@all
    end

    def memberships
      Membership.all.select do |member|
        member.lifter == self
      end

    end

    def self.lift_average
      lift_by_member = self.all.map do |lifter_obj|
        lifter_obj.lift_total
      end
      
      lift_by_member.reduce(0, &:+) / self.all.length

    end

    def signup(gym)
      Membership.new(self, gym)
    end









end
