N, Q = gets.split.map(&:to_i)
S = gets.chomp
Q.times do
  l, r = gets.split.map(&:to_i)
  t = S[(l-1)..(r-1)]
  puts t.scan(/AC/).size
end