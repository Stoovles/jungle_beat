require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'


class LinkedListTest < Minitest::Test

  def test_it_exists
    linkedList = LinkedList.new

    assert_instance_of LinkedList, linkedList
  end

  def test_it_head_starts_nil
    linkedList = LinkedList.new

    assert_nil linkedList.head
  end

  def test_it_can_append_head
    linkedList = LinkedList.new
    linkedList.append("doop")

    assert_instance_of Node, linkedList.head
    assert_equal "doop", linkedList.head.data
    assert_nil linkedList.head.next
  end

  def test_it_can_append_next
    linkedList = LinkedList.new
    linkedList.append("doop")
    linkedList.append("deep")

    assert_instance_of Node, linkedList.head.next
    assert_equal "deep", linkedList.head.next.data
  end

  def test_it_can_count
    linkedList = LinkedList.new
    assert_equal 0, linkedList.count

    linkedList.append("doop")
    assert_equal 1, linkedList.count

    linkedList.append("deep")
    assert_equal 2, linkedList.count
  end

  def test_it_can_to_s
    linkedList = LinkedList.new
    assert_nil linkedList.to_string

    linkedList.append("doop")
    assert_equal "doop", linkedList.to_string

    linkedList.append("deep")
    assert_equal "doop deep", linkedList.to_string
  end

  def test_it_can_prepend
    linkedList = LinkedList.new
    linkedList.append("doop")
    linkedList.append("deep")
    linkedList.prepend("suu")

    assert_equal "suu doop deep", linkedList.to_string
  end

  def test_it_can_insert
    linkedList = LinkedList.new
    linkedList.append("suu")
    linkedList.append("doop")
    linkedList.append("deep")

    linkedList.insert(2, "boop")

    assert_equal "suu doop boop deep", linkedList.to_string
  end


end
