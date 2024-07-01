S = gets.chomp.chars
ans = S.reduce('') do |acc, ch|
  if ch == '0'
    acc + '0'
  elsif ch == '1'
    acc + '1'
  else
    acc[0..-2]
  end
end
puts ans
