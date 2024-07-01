class MyList
  attr_reader :vs

  def initialize
    @vs = []
  end

  def insert x
    @vs.push(x)
  end

  def delete x
    (@vs.length-1).downto(0) do |i|
      if @vs[i] == x
        @vs.delete_at i
        break
      end
    end
  end

  def delete_first
    @vs.pop
  end

  def delete_last
    @vs.shift
  end
end

my_list = MyList.new
n = gets
while l = gets
  command, num = l.chomp.split(' ')
  num = num.to_i
  case command
  when 'insert'
    my_list.insert num
  when 'delete'
    my_list.delete num
  when 'deleteFirst'
    my_list.delete_first
  when 'deleteLast'
    my_list.delete_last
  end
end

puts my_list.vs.reverse.join(' ')
