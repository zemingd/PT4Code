n,m = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i).sort
if n >= m
  puts 0
  exit
end
dis = []
(m-1).times do |i|
  dis[i] = x[i+1] - x[i]
end
dis = dis.sort
puts dis[0..m-n-1].inject(:+)