require 'scanf'

while true
  input = scanf("%d %d")
  break if input[0] == 0 && input[1] == 0
  input.sort!
  puts "#{input[0]} #{input[1]}"
end