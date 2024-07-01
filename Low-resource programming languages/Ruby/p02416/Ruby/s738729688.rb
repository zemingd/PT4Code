loop do
  s = gets.chomp.split('')
  break if s[0] == '0'

  sum = 0
  s.each do |s_i|
    sum += s_i.to_i
  end
  puts sum
end
