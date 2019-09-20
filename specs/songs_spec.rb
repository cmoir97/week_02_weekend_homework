require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Pedestrian at Best")
  end

  def test_song_has_name
    assert_equal("Pedestrian at Best", @song.song_name)
  end







end
