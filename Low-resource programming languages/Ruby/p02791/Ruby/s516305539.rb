n = gets.to_i
sequence = gets.split.map(&:to_i)

result = 0
sequence.each_index do |i|
  if i == 0
    result += 1
    next
  end
  result += 1 if sequence[i-1] >= sequence[i]
end
puts result