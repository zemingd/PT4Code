class Heap
  attr_accessor(:data, :size)

  def initialize()
    @data = []
    @size = 0
  end

  def push(x)
    @data[@size] = x
    i = @size
    j = ((i + 1) / 2 ) - 1
    issorted = false
    while j >= 0 && !issorted
      if @data[i] > @data[j]
        @data[i], @data[j] = @data[j], @data[i]
        i = j
        j = ((i + 1) / 2 ) - 1
      else
        issorted = true
      end
    end
    @size += 1
  end

  def pop()
    if @size == 0
      nil
    else
      re = @data[0]
      @size -= 1
      @data[0] = @data[size]
      i = 0
      j1 = (i+1) * 2 - 1
      j2 = (i+1) * 2
      issorted = false
      while size > j1 && !issorted
        if size > j2
          max_i = @data[j1] > @data[j2] ? j1 : j2
          if @data[i] >= @data[max_i]
            issorted = true
          else
            @data[i], @data[max_i] = @data[max_i], @data[i]
            i = max_i
            j1 = (i+1) * 2 - 1
            j2 = (i+1) * 2
          end
        else
          if @data[i] >= @data[j1]
            issorted = true
          else
            @data[i], @data[j1] = @data[j1], @data[i]
            i = j1
            issorted = true
          end
        end
      end
      re
    end
  end

end

n,m = gets.chomp.split(" ").map(&:to_i)

works = Array.new(10**5+1).map{Array.new}
n.times do |i|
  a,b = gets.chomp.split(" ").map(&:to_i)
  works[a].push(b)
end

ans = 0
heap = Heap.new
for i in 1..m
  works[i].each do |x|
    heap.push(x)
  end
  highest = heap.pop()
  if highest != nil
    ans += highest
  end
end
puts ans