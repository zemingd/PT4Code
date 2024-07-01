n = gets.chomp.to_i
s = gets.chomp

black_count = s.count('#')
white_count = s.count('.')
if black_count == 0 || white_count == 0
  puts 0
  exit
end

index = 0
min_count = n
while true do
  black_index = s.index('.#', index)
  break if black_index == nil
  index = black_index + 1

  count = s[0...black_index].count('#') + s[(black_index+1)...n].count('.')
  if count < min_count
    min_count = count
  end
end
puts min_count
