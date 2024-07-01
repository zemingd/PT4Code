n,x=gets.chomp.split(" ").map { |e| e.to_i }
m=Array.new(n,0)

n.times do |i|
  m[i] = gets.chomp.to_i
end
m = m.sort
sum = m.inject(:+)
puts n + (x-sum)/m[0]
