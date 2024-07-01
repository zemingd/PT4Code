n = gets.chomp.to_i
list = []
n.times do |i|
  list[i] = gets.chomp.split.map(&:to_i)
end

list.sort_by!{ |a, b| b }

now = 0
result = 'Yes'
n.times do |i|
  a, b = list[i]
  now += a
  if now > b
    result = 'No'
    break
  end
end

puts(result)