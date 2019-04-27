class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
      elements = data.split(" ")
      elements.each do |element|
        @list.append(element)
      end
  end

  def play
    `say -r 500 -v Boing #{@list.to_string}`
  end

end
