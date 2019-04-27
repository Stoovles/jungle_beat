class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next != nil
        current_node = current_node.next
      end
      current_node.next = Node.new(data)
    end
  end

  def count
    if @head == nil
      0
    elsif @head.next == nil
      1
    else
      current_node = @head
      counter = 1
      while current_node.next != nil
        current_node = current_node.next
        counter += 1
      end
      counter
    end
  end

  def to_string
    if @head == nil
      nil
    elsif @head.next == nil
      @head.data
    else
      elements = []
      current_node = @head
      while current_node.next != nil
        elements << current_node.data
        current_node = current_node.next
      end
      elements << current_node.data
      elements.join(" ")
    end
  end


  def prepend(data)
    node = Node.new(data)
    if @head == nil
      @head = node
    else
      node.next = @head
      @head = node
    end
  end

  def insert(int, data)
    if int == 0
      binding.pry
      self.prepend(data)
    else
      current_node = @head
      (int - 1).times do
        current_node = current_node.next
      end
      old_next = current_node.next
      current_node.next = Node.new(data)
      current_node.next.next = old_next
    end
  end





end
