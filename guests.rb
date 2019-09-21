class Guest
  attr_accessor :guest_name, :guest_wallet, :favourite_song

  def initialize(guest_name, guest_wallet, favourite_song)
    @guest_name = guest_name
    @guest_wallet = guest_wallet
    @favourite_song = favourite_song
  end

  def remove_money_from_guest(amount)
    @guest_wallet -= amount
  end













end
