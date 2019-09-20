require("minitest/autorun")
require('minitest/rg')
require_relative("../guests")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Cameron", 50)
  end

  def test_guest_has_name
    assert_equal("Cameron", @guest.guest_name)
  end

  def test_guest_has_money
    assert_equal(50, @guest.guest_wallet)
  end








end
