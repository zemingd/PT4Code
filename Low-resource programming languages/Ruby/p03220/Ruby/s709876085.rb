N = gets.to_i
T,A =gets.split.map(&:to_i)
array = Array.new(N)
array = gets.split.map(&:to_i)
array.map! { |x|
  (A - ( T-x*(0.006) )).abs
}
puts array.each_with_index.min[1]+1
