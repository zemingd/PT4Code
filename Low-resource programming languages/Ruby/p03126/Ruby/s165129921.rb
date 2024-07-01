n,m = gets.split.map(&:to_i)

b = (1..n).map do |i|
  a_i = gets.split.map(&:to_i)
  a_i[1..a_i[0]]
end

puts b.inject {|x,y| x&y}.size
