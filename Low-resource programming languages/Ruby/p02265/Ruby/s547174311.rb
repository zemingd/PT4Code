def main
  n = gets.to_i
  linked_list = LinkedList.new

  n.times do
    command = gets.split
    if command[1]
      linked_list.send(command[0], command[1].to_i)
    else
      linked_list.send(command[0])
    end
  end

  linked_list.print
end

class LinkedList
  def initialize
    @keys = []
  end

  def insert(key)
    @keys.unshift(key)
  end

  def delete(key)
    index = @keys.find_index(key)
    @keys.delete_at(index) if index
  end

  def deleteFirst
    @keys.shift
  end

  def deleteLast
    @keys.pop
  end

  def print
    puts @keys.join(" ")
  end
end

main
