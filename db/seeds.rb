# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


j = Teacher.create!(name: 'J', photo: 'https://avatars0.githubusercontent.com/u/12768542?v=4&s=400')
ari = Teacher.create!(name: 'Professor Ari', photo: 'http://aribrenner.com/media/images/ari0.jpg')
bell = Teacher.create!(name: 'Bell', photo: 'http://uploads.tapatalk-cdn.com/20161123/679e78cd8a276f76f1f962ba2a4c454e.jpg')
kate = Teacher.create!(name: 'Kate', photo: 'https://avatars3.githubusercontent.com/u/14140332?v=4&s=460')
joe = Teacher.create!(name: 'Joe', photo: 'https://yt3.ggpht.com/-2M-CgJ1lNcU/AAAAAAAAAAI/AAAAAAAAAAA/G08SRnRYgEA/s900-c-k-no-mo-rj-c0xffffff/photo.jpg')
jason = Teacher.create!(name: 'Jason', photo: 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/6831/thumb_Frontlines_-0061.jpg')

puts "#{Teacher.count} teachers created!"


# ari courses
Course.create!(name: 'Stealing Snacks 101', teacher_id: ari.id, start_date: 1.month.ago, end_date: 2.days.from_now)
Course.create!(name: 'Dancing 201', teacher_id: ari.id, start_date: 3.weeks.ago, end_date: 2.weeks.from_now)
Course.create!(name: 'Big Data', teacher_id: ari.id, start_date: 1.day.ago, end_date: 2.days.from_now)

# bell courses
Course.create!(name: 'Legobuidling 101', teacher_id: bell.id, start_date: 3.days.ago, end_date: 4.weeks.from_now)
Course.create!(name: 'Bell 101: Becoming John Bell', teacher_id: bell.id, start_date: 2.weeks.ago, end_date: 2.months.from_now)
Course.create!(name: 'Bell 102: Un-becoming John Bell', teacher_id: bell.id, start_date: 2.weeks.ago, end_date: 2.months.from_now)
Course.create!(name: 'Bell 103: Re-becoming John Bell', teacher_id: bell.id, start_date: 2.weeks.ago, end_date: 2.months.from_now)
Course.create!(name: 'Ice Skating', teacher_id: bell.id, start_date: 2.weeks.ago, end_date: 2.months.from_now)

# kate courses
Course.create!(name: 'Inheriting from Prototypes', teacher_id: kate.id, start_date: 2.days.ago, end_date: 2.days.from_now)
Course.create!(name: 'Prototyping Inheritance', teacher_id: kate.id, start_date: 4.days.ago, end_date: 3.weeks.from_now)
Course.create!(name: 'Beautiful Handwriting 101', teacher_id: kate.id, start_date: 5.days.ago, end_date: 6.days.from_now)

# joe courses
101.upto(105) do |i|
  Course.create!(name: "Whiteboarding #{i}", teacher_id: joe.id, start_date: 1.day.ago, end_date: i.years.from_now)
  Course.create!(name: "D3 #{i}", teacher_id: joe.id, start_date: 1.day.ago, end_date: i.years.from_now)
end

# j courses
Course.create!(name: 'Express 101: Express yourself with Express!', teacher_id: j.id, start_date: 3.days.ago, end_date: 4.weeks.from_now)
Course.create!(name: 'Express 102: Dreaming in Express', teacher_id: j.id, start_date: 7.days.ago, end_date: 5.weeks.from_now)
Course.create!(name: 'Flexbox 101: Trapped in Flexbox', teacher_id: j.id, start_date: 7.days.ago, end_date: 5.weeks.from_now)
Course.create!(name: 'Cats 101: Trapped in Catbox', teacher_id: j.id, start_date: 7.days.ago, end_date: 5.weeks.from_now)

# jason courses
Course.create!(name: 'Heroku 101: Are ~you~ hosted on Heroku?', teacher_id: jason.id, start_date: 1.week.ago, end_date: 3.days.from_now)
Course.create!(name: 'What programming langauge are ~you~', teacher_id: jason.id, start_date: 1.week.ago, end_date: 3.days.from_now)
Course.create!(name: 'NPM 101: How to deploy yourself to NPM', teacher_id: jason.id, start_date: 1.week.ago, end_date: 3.days.from_now)


puts "#{Course.count} courses created!"


Course.all.find_each do |course|
  5.times do
    Student.create!(name: Faker::Name.name, course_id: course.id, grade: 50 + rand(50), age: 15 + rand(40))
  end
end

puts "#{Student.count} students created!"
