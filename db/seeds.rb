# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Deleting foos and bars"
Bar.delete_all
Foo.delete_all
body = "Pinterest do elit excepteur, butcher irure selvage wayfarers duis cornhole blue bottle nihil. Terry Richardson cred velit, beard jean shorts minim Bushwick exercitation tote bag Austin. Selfies laboris 3 wolf moon, odio organic flannel pug readymade Godard post-ironic Bushwick cred dolore. Shoreditch fashion axe banh mi pug. DIY Cosby sweater banh mi ea, lomo letterpress ad seitan pug laboris id street art. Brunch adipisicing sed, Marfa artisan selfies sapiente letterpress. 3 wolf moon jean shorts food truck enim."
n = 2

for i in (0...100) do
  bar = Bar.create({ name: "Bar # #{i}", body: body})
  for n in (0...10) do
    Foo.create({ subject: "Foo # #{n * i}", body: body, bar: bar})
  end
end

puts "Created #{Bar.count} bars and #{Foo.count} foos"
