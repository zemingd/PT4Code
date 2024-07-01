n = gets.to_i 
map = Hash.new(0)
max = 0
n.times do
  s = gets.chomp!
  map[s] += 1
  if max < map[s]
    max = map[s]
  end
end

arr = []
map.each do |s, count|
  next if count < max
  
  arr << s
end

arr.sort!.each do |e|
  puts e
end
