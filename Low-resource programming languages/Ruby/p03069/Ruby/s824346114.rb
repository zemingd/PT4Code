n = gets.chomp.to_i
s = gets.chomp

black_count = s.count('#')
white_count = s.count('.')
if black_count == 0 || white_count == 0
  puts 0
  exit
end

first_index = s.index('.#')
if first_index == nil
  black_count = s.count('#')
  white_count = s.count('.')
  count = black_count > white_count ? white_count : black_count
  puts count
  exit
end
first_count = s[0...first_index].count('#') + s[(first_index+1)...n].count('.')

index = first_index + 1
previous_count = first_count
min_count = first_count
while true do
  black_index = s.index('.#', index)
  break if black_index == nil
  substr = s[index..black_index]
  count = previous_count + substr.count('#') - substr.count('.')

  if count < min_count
    min_count = count
  end

  index = black_index + 1
  previous_count = count
end
puts min_count
