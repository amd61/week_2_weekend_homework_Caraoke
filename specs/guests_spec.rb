require('minitest/autorun')
require('minitest/rg')

require_relative('../guests')


class TestGuests < MiniTest::Test

  def setup

    @guest = Guests.new ("Arlene")
  end

  def test_guest_has_name
    assert_equal("Arlene", @guest.name)
  end 
end

end


