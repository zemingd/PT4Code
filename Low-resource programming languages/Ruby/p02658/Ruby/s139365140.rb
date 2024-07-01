n = gets.to_i
ary = gets.split.map(&:to_i)
ans = ary.inject(:*) 
puts ans <= 10 ** 18 ? ans : -1