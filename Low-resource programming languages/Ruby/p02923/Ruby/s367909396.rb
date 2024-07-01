def max(a, b)
  a > b ? a : b
end

gets
arr = gets.split.map(&:to_i)

counter = 0
max_counter = 0
now = -1
arr.each do |i|
  if i <= now
    counter += 1
  else
    max_counter = max(counter, max_counter)
    counter = 0
  end
  now = i
end

puts max(counter, max_counter)