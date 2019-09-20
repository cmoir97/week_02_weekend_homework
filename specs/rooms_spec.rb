require("minitest/autorun")
require('minitest/rg')
require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("The Red Room", 10)
    @song = Song.new("Avant Gardener")
    @guest = Guest.new("Cameron", 50)
  end

  def test_room_has_name
    assert_equal("The Red Room", @room.room_name())
  end

  def test_room_is_empty
    assert_equal(0, @room.guest_count)
  end

  def test_room_has_no_songs
    assert_equal(0, @room.number_of_songs)
  end

  def test_add_guest_to_room
    @room.add_guest_to_room(@guest)
    assert_equal(1, @room.guest_count)
  end

  def test_add_song_to_room
    @room.add_song_to_room(@song)
    assert_equal(1, @room.number_of_songs)
  end

  def test_remove_guest_from_room
    @room.add_guest_to_room(@guest)
    @room.remove_guest_from_room(@guest)
    assert_equal(0, @room.guest_count)
  end

  def test_remove_song_from_room
    @room.add_song_to_room(@song)
    @room.remove_song_from_room(@song)
    assert_equal(0, @room.number_of_songs)
  end

  def test_room_capacity
    assert_equal(10, @room.room_capacity)
  end

  def test_is_room_full__not_full
    assert_equal(false, @room.is_room_full)
  end

  def test_enough_room_guest_added
    @room.enough_room_guest_added(@room, @guest)
    assert_equal(1, @room.guest_count)
  end




end
