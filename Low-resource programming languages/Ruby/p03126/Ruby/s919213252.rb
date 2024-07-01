n,m = gets.split.map(&:to_i)
array = Array.new(m,0)
parray = Array.new(m,0)
cnt = 0
n.times do |i|
  parray = gets.split.map(&:to_i)
  parray.delete_at(0)
  parray.each {|num|
    array[num-1] += 1
  }
end
# p array
array.each {|num|
  if num == n
    cnt += 1
  end
}
puts cnt
