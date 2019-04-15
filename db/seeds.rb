# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

init_user = User.new
init_user.email = 'user@example.com'
init_user.password = 'greatPasswordDawg1337'
init_user.save!

User.create(
        email: "example@gmail.com",
        password: "123456"
        )
#squat = Exercise.create!(:lift => 'squat', :sets => '5', :reps => '3', :restperiod => '3')
#deadlift = Exercise.create!(:lift => 'deadlift', :sets => '1', :reps => '5', :restperiod => '4')
#bench = Exercise.create!(:lift => 'bench', :sets => '5', :reps => '3', :restperiod => '3')
#press = Exercise.create!(:lift => 'press', :sets => '5', :reps => '3', :restperiod => '3')
#chins = Exercise.create!(:lift => 'chins', :sets => '5', :reps => '3', :restperiod => '3')
#cleans = Exercise.create!(:lift => 'cleans;', :sets => '5', :reps => '3', :restperiod => '3')
