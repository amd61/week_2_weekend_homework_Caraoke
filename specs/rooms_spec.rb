require('minitest/autorun')
require('minitest/rg')

require_relative('../Rooms')
require_relative('../Songs')
require_relative('../Guests')

class TestRooms < MiniTest::Test

  def setup

    @song1 = Songs.new("Cool Kids", "Echosmith")
    @song2 = Songs.new("Jungle Boogie", "Kool & The Gang")
    @song3 = Songs.new("Cool", "Alesso")
    @cool_songs = [@song1, @song2]

    
    @guest1 = Guests.new("Cool dude 1")
    @guest2 = Guests.new("Cool dude 2")
    @guest3 = Guests.new("Cool dude 3")
    @guests = [@guest1, @guest2, @guest3]

    @room = Rooms.new("Cool Room", @cool_songs, @guests)
    end

    def test_room_name
     assert_equal("Cool Room", @room.name)
  end

 def test_add_song_to_room
    @room.add_song(@song3)
    assert_equal(3, @room.songs.count)
  end
   
   def test_next_song
    
    @room.next_song()   
    assert_equal(1, @room.songs.count)
    
    end

      def test_check_in_guest

        @room.check_in_guest(@guest1)
        assert_equal(4, @room.guests.count)
      end 

    def test_check_out_guest
      
      @room.check_out_guest(@guest1)
      assert_equal(2, @room.guests.count)
    
    end

end



