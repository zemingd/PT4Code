N = gets.to_i
heights = gets.split.map(&:to_i)
ans = 0
max_height = -1
heights.each{|e|
  ans += 1 if max_height <= e
  max_height = e if max_height < e
}
puts ans