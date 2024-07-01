n = gets.to_i
list = gets.split.map(&:to_i)

count = 0
index = 1
n.times do |i|
  if list[i] != index
    count += 1
  else
    index += 1
  end
end

if index == 1
  count = -1
end

puts count
