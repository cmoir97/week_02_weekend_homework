class Room
  attr_reader :room_name
  def initialize(room_name)
    @room_name = room_name
    @guests = []
    @songs = []
  end

  def guest_count
    @guests.length
  end

  def number_of_songs
    @songs.length
  end










end