input = gets
while input
  break if input.include?('?')
  puts eval(input)
end