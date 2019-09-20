require("minitest/autorun")
require('minitest/rg')
require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("The Red Room")
    @song = Song.new("Avant Gardener")
    @guest = Guest.new("Cameron", 50)
  end

  def test_room_has_name
    assert_equal("The Red Room", @room.room_name())
  end














end
