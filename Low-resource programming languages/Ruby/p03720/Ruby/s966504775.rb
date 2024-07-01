n, m = gets.chomp.split(" ").map(&:to_i)
h = Array.new(n+1, 0)
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  h[a] +=1
  h[b] +=1
end
(1..(n)).each do |i|
  puts h[i]
end