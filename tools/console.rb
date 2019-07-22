# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'


# test code goes here
lifter1 = Lifter.new("Ross", 150)
lifter2 = Lifter.new("Franco", 135)
lifter3 = Lifter.new("Janet", 180)
lifter4 = Lifter.new("Mackenzie", 175)

gym1 = Gym.new("Monkey Gym", 10)
gym2 = Gym.new("Yogoooo", 15)



#sign up
lifter1.signup(gym1)
lifter2.signup(gym1)
lifter3.signup(gym1)
lifter4.signup(gym2)
lifter1.signup(gym2)


gym1members = gym1.gym_list_of_members


gym1_member_names = gym1.members_by_name


average_lift = Lifter.lift_average()

binding.pry

lifter1_member = Gym.membership_cost_total(lifter1)



puts "Gains!"
