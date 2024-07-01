class Heap
  attr_reader :size

  def initialize
    @heap = []
    @size = 0
  end

  def add(arr)
    i = @size
    while i > 0 do
      parent_index = (i - 1) / 2
      break if arr[0] <= @heap[parent_index][0]
      @heap[i] = @heap[parent_index]
      i = parent_index
    end
    @heap[i] = arr
    @size += 1
  end

  def pop
    return if @size <= 0
    max_arr = @heap[0]
    @size -= 1
    n = @heap[@size]
    i = 0
    while i * 2 + 1 < @size do
      child_index1 = i * 2 + 1
      child_index2 = i * 2 + 2
      if child_index2 < @size && @heap[child_index2][0] > @heap[child_index1][0]
        child_index1 = child_index2
      end
      break if @heap[child_index1][0] <= n[0]
      @heap[i] = @heap[child_index1]
      i = child_index1
    end
    @heap[i] = n
    max_arr
  end

  def max; @heap[0] end
  def size; @size end
end

x,y,z,k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort.reverse
b = gets.chomp.split(" ").map(&:to_i).sort.reverse
c = gets.chomp.split(" ").map(&:to_i).sort.reverse
arr = Array.new(x+1){Array.new(y+1){Array.new(z+1,false)}}
heap = Heap.new
heap.add([a[0]+b[0]+c[0],0,0,0])
arr[0][0][0] = true
k.times do
  maxarr = heap.pop
  puts maxarr[0]
  i = maxarr[1]
  j = maxarr[2]
  k = maxarr[3]
  if i+1 < x && !arr[i+1][j][k]
    heap.add([a[i+1]+b[j]+c[k],i+1,j,k])
    arr[i+1][j][k] = true
  end
  if j+1 < y && !arr[i][j+1][k]
    heap.add([a[i]+b[j+1]+c[k],i,j+1,k])
    arr[i][j+1][k] = true
  end
  if k+1 < z && !arr[i][j][k+1]
    heap.add([a[i]+b[j]+c[k+1],i,j,k+1])
    arr[i][j][k+1] = true
  end
end