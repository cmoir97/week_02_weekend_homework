require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Small Poppies")
  end

  def test_song_has_name
    assert_equal("Small Poppies", @song.song_name)
  end







end
