loop do
  str = gets.chomp
  break if str.include?('?')
  puts eval(str)
end