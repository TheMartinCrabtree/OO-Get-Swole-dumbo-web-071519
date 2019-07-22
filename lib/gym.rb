class Gym
  attr_reader :name, :membership_fee
  @@all = []

  def initialize(name, membership_fee)
    @name = name
    @membership_fee = membership_fee

    @@all << self
  end

  def self.all
    @@all
  end

  def gym_list_of_members
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def members_by_name
    members_obj = Membership.all.select do |membership|
      membership.gym == self
    end
    members_obj.map do |member|
      member.lifter.name
    end

  end

  def self.membership_cost_total(lifter_obj)
    member_gyms = Membership.all.select do |member|
      member.lifter == lifter_obj
    end

    member_gyms.reduce do |total, cost|
      total + cost.cost
    end
  end







end
