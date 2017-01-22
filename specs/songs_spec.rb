require('minitest/autorun')
require('minitest/rg')

require_relative('../Rooms')
require_relative('../Songs')
require_relative('../Guests')


class TestSongs < MiniTest::Test

 def setup

    @song1 = Songs.new("Cool Kids", "Echosmith")

  end

    def test_song_name_and_artist
      assert_equal("Cool Kids", @song1.name)
      assert_equal("Echosmith", @song1.artist)
    end

  end