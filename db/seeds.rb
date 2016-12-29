# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

boards = Board.create([{ name: 'General' }, { name: 'Politics' }, { name: 'Atlandia Discussion' }])

=begin
streams = Stream.create([
        { title: 'How to keep a house warm when there is a natural gas shortage', board_id: 3, user_id: 1 },
        { title: 'The drought is really intense. How have you been keeping your water usage low?', board_id: 3, user_id: 1 },
        { title: 'I cut down on my carbon taxes by using public transit. How have you guys managed with this new law?', board_id: 3, user_id: 1},
        { title: 'VOTE YES ON PROP-39: Solar Energy Initiative', board_id: 2, user_id: 1},
        { title: 'City Hall meeting: Feb 12th, 2016', board_id: 2, user_id: 1},
        { title: 'What do you think of Project Citizen?', board_id: 1, user_id: 1}
         ])

posts = Post.create([
        {user_id: 1, stream_id: 1, content: "I've been able to keep things heated with my wood stove and an electric heater. What about you?"},
        {user_id: 3, stream_id: 1, content: "The best way, in my opinion, is to just dress warmer. It's cheap, free if you already
            have the clothes. It's rather nice."},
        {user_id: 2, stream_id: 1, content: "I wish I had bought that jacket I saw a little while ago. :'("}
    ])
=end
