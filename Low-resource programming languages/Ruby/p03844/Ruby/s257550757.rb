N = gets.chomp.to_i
A = gets.chomp.split.map{|i| i.to_i}
res = N.times.to_a.permutation.map{|i|i.to_a}.select do |arr|
  r = true
  arr.each_with_index {|v, i|
    left = i
    right = N - 1 - i
    abs = (left - right).abs
    r = false if A[v] != abs
    break unless r
  }
  r
end
p res.length
