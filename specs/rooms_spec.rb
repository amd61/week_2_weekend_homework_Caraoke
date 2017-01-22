require('minitest/autorun')
require('minitest/rg')

require_relative('../Rooms')
require_relative('../Songs')
require_relative('../Guests')

class TestRooms < MiniTest::Test

  def setup

    @song1 = Songs.new("Cool Kids", "Echosmith")
    @song2 = Songs.new("Jungle Boogie", "Kool & The Gang")
    @coolSongs = [@song1, @song2]

    @room = Rooms.new("Cool Room", @coolSongs, [])
    @guest1 = Guests.new("Cool dude 1")
    @guest2 = Guests.new("Cool dude 2")
    @guest3 = Guests.new("Cool dude 3")

    @guests = [@guest1, @guest2, @guest3]
    end

    def test_room_name
     assert_equal("Cool Room", @room.name)
  end

end 
