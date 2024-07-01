N, M = gets.split.take(2).map(&:to_i)
Roads = M.times.map{gets.split.take(2).map(&:to_i)}

puts Roads.flatten.each_with_object([0]*N){|m, r|
  r[m-1] += 1
}