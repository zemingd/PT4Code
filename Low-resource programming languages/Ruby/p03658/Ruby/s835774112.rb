n, k = gets.chom.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i)
ans = 0
l = l.sort
k.times do |i|
  ans += l.pop
end
put ans