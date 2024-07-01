class List
  attr_accessor :value, :prev, :next

  def initialize(value, prev, nxt)
    @value = value
    @prev = prev
    @next = nxt
  end
end

@bampei = List.new(nil, nil, nil)

def insert(x)
  list = List.new(x, nil, @bampei.prev)
  if(@bampei.prev.nil?)
    @bampei.prev = list
    @bampei.next = list
  else
    @bampei.prev.prev = list
    @bampei.prev = list
  end
end

def delete(x)
  target = @bampei.prev
  while(!target.nil?)
    if target.value == x
      if target.next && target.prev
        target.next.prev = target.prev
        target.prev.next = target.next
      elsif target.next
        target.next.prev = nil
        @bampei.prev = target.next
      elsif target.prev
        @bampei.next = target.prev
        target.prev.next = nil
      else
        @bampei.prev = nil
        @bambei.next = nil
      end
      break
    end
    target = target.next
  end
end

def deleteFirst
  @bampei.prev = @bampei.prev.next
  if @bampei.prev
    @bampei.prev.prev = nil
  end
end

def deleteLast
  if(@bampei.next&.prev)
    @bampei.next.prev.next = nil
    @bampei.next = @bampei.next.prev
  else
    @bampei.next = nil
    @bampei.prev = nil
  end
end

n = gets.to_i
n.times do
  input = gets.split(" ")
  if input.size == 2
    send(input[0], input[1].to_i)
  else
    send(input[0])
  end
end

target = @bampei.prev
outputs = []
while(!target.nil?)
  outputs << target.value
  target = target.next
end
puts outputs.join(' ')

