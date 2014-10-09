# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def make_clients
  30.times do
    c = Client.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name)
    c.manager = Client.all.sample
    c.save
  end
end


def make_goals
  30.times do
    g = Goal.create(
      name: Faker::Company.catch_phrase,
      description: Faker::Lorem.paragraph(4)
    )
    g.parent = Goal.all.sample
    g.save
  end
end

def most_clients(amount)
  return if amount.class != Fixnum
  Client.all
        .select{|x| x.subordinates.count > amount }
        .map do |x|
          {
            boss: x.first_name,
            employees: x.subordinates.map(&:first_name)
          }
        end
end

binding.pry
