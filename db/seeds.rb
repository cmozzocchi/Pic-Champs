# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  pictures = [
    {
    :title => 'testing',
    :user_id => 1,
    :url => 'http://24.media.tumblr.com/tumblr_kxc9wkXE0B1qa42jro1_500.jpg'
    },
    {
    :title => 'testing2',
    :user_id => 1,
    :url => 'http://24.media.tumblr.com/tumblr_kxc9dgK7gV1qa42jro1_500.jpg'
    }
    ]

  Picture.create pictures