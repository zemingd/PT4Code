n, m = gets.split.map{|s|s.to_i}
islands = [n+1] * n

m.times do |ai|
  src, target = gets.split.map{|s|s.to_i}
  islands[src-1] = target if islands[src-1] > target
end

count = 0

(n-1).times do |i|
  if islands[i] == i+2
    count += 1
  else
    islands[i+1] = islands[i] if islands[i+1] > islands[i]
  end
end

puts count