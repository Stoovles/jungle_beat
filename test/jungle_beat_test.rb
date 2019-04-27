require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'
require 'pry'


class JungleBeatTest < Minitest::Test

  def test_it_exists
    jungleBeat = JungleBeat.new

    assert_instance_of JungleBeat, jungleBeat
  end

  def test_it_list_starts_empty
    jungleBeat = JungleBeat.new

    assert_nil jungleBeat.list.head
  end

  def test_it_can_append
    jungleBeat = JungleBeat.new
    jungleBeat.append("deep doo ditt")

    assert_equal "deep", jungleBeat.list.head.data
    assert_equal "doo", jungleBeat.list.head.next.data
    assert_equal "deep doo ditt", jungleBeat.list.to_string
    assert_equal 3, jungleBeat.list.count

    jungleBeat.append("woo hoo shu")

    assert_equal "deep doo ditt woo hoo shu", jungleBeat.list.to_string
    assert_equal 6, jungleBeat.list.count
  end

  def test_it_can_play
    jungleBeat = JungleBeat.new
    jungleBeat.append("deep doo ditt")

    jungleBeat.play
  end

end
