class Room
  attr_reader :room_name, :room_capacity, :room_entry_fee
  def initialize(room_name, room_capacity, room_entry_fee)
    @room_name = room_name
    @guests = []
    @songs = []
    @room_capacity = room_capacity
    @room_entry_fee = room_entry_fee
    @bar_money_taken = 0
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

  def is_room_full
    return true if @guests.length == @room_capacity
    return false if @guests.length < @room_capacity

  end

  def enough_room(room, guest)
    room.add_guest_to_room(guest) if room.is_room_full == false
    return "Sorry that room is full" if room.is_room_full == true
  end

  def guest_pays_entry_fee(guest, amount)
    guest.remove_money_from_guest(amount) if is_room_full() == false
    @bar_money_taken += amount
  end

  def bar_money_taken
    return @bar_money_taken
  end


end
