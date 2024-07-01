class PriorityQueue
  def initialize
    @heapArr = []
  end

  def empty?
    @heapArr.empty?
  end

  def push(n)
    i = @heapArr.size

    while i>0
      p = (i-1)/2
      break if @heapArr[p] <= n
      @heapArr[i] = @heapArr[p]
      i=p
    end

    @heapArr[i] = n
  end

  def pop
    min = @heapArr[0]
    n   = @heapArr.pop
    unless @heapArr.empty?
      i   = 0
      while (i*2+1) < @heapArr.size
        if @heapArr[i*2+2].nil?
          buf=i*2+1
        else
          buf=(@heapArr[i*2+1]<@heapArr[i*2+2])?i*2+1:i*2+2
        end
        break if @heapArr[buf] >= n
        @heapArr[i] = @heapArr[buf]
        i=buf
      end
      @heapArr[i]=n
    end
    return min
  end

  def show
    level=0
    p=0
    while p<@heapArr.size
      (2**level).times do
        if @heapArr[p].nil?
          print "x "
        else
          print "#{@heapArr[p]} "
        end
        p+=1
      end
      puts ""
      level+=1
    end
    puts ""
  end
end
n, m = gets.split(' ').map(&:to_i)

works = Array.new(10**5 + 1) { [] }

n.times do
  a, b = gets.split(' ').map(&:to_i)
  works[a - 1] << b
end

ans = 0

queue = PriorityQueue.new

m.times do |i|
  works[i].each do |work|
    queue.push -work
  end

  ans -= queue.pop unless queue.empty?
end

puts ans
