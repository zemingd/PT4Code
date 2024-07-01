gets
h = gets.chomp.split(" ").map(&:to_i)
min = h.shift
result = 1
for i in 0...h.size
  elem = h.shift
  if elem > min then
    min = elem
    result += 1
  elsif elem == min then
    result += 1
  end
end
puts result
