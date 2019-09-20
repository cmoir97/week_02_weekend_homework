class Guest
  attr_accessor :guest_name, :guest_wallet

  def initialize(guest_name, guest_wallet)
    @guest_name = guest_name
    @guest_wallet = guest_wallet
  end

  def remove_money_from_guest(amount)
    @guest_wallet -= amount
  end













end
