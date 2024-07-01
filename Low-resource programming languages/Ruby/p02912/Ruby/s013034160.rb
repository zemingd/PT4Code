class Heap
  attr_reader :size
  def initialize
    @heap = []
    @size = 0
  end
  def sum
    @heap.inject(:+)
  end
  def push(n)
    i = @size
    while i > 0
      pid = (i - 1) / 2
      break if n >= @heap[pid]
      @heap[i] = @heap[pid]
      i = pid
    end
    @heap[i] = n
    @size += 1
  end
  def pop
    top = @heap[0]
    @size -= 1
    n = @heap[@size]
    i = 0
    while i * 2 + 1 < @size
      cid1 = i * 2 + 1
      cid2 = cid1 + 1
      if cid2 < @size && @heap[cid2] < @heap[cid1]
        cid1 = cid2
      end
      break if @heap[cid1] >= n
      @heap[i] = @heap[cid1]
      i = cid1
    end
    @heap[i] = n
    top
  end
end

def input_n
  gets.to_i               # 単一整数
end

def input_s
  gets.chomp              # 文字列。chompを付けないと改行文字がついてくる
end

def input_a
  gets.split.map(&:to_i)  # スペースで区切られた複数の整数
end

def input_o(num)
  num.times.map { gets.to_i }  # 縦に並んだ複数の整数。たまにある
end

def output_f(num)
  puts sprintf("%.12f", num)
end

n, m = input_a
a = input_a

q = Heap.new

a.each do |num|
  q.push(-num)
end

m.times do
  max = q.pop
  q.push(-(-max / 2))
end

puts -q.sum