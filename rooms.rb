class Room
  attr_reader :room_name, :room_capacity
  def initialize(room_name, room_capacity)
    @room_name = room_name
    @guests = []
    @songs = []
    @room_capacity = room_capacity
  end

  def guest_count
    @guests.length
  end

  def number_of_songs
    @songs.length
  end

  def add_guest_to_room(guest)
    @guests.push(guest)
  end

  def add_song_to_room(song)
    @songs.push(song)
  end

  def remove_guest_from_room(guest)
    @guests.delete(guest)
  end

  def remove_song_from_room(song)
    @songs.delete(song)
  end
end
