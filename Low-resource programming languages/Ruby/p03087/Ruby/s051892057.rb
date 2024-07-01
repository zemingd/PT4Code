n,q = gets.chomp.split.map(&:to_i)
s = gets.chomp
array = []
q.times do |i|
  l, r = gets.chomp.split.map(&:to_i)
  array.push([l, r])
end

q.times do |i|
  sliced_s = s.slice(array[i][0]-1..array[i][1]-1)
  puts sliced_s.scan('AC').length
end

