n,k,q = gets.split(" ").map(&:to_i)
array = []
array_player = Array.new(n, 0)
q.times do |i|
  array << gets.to_i
end

array.each do |num|
  array_player[num - 1] += 1
end

array_player.each do |num|
  puts (k + num - q) > 0 ? "Yes" : "No"
end