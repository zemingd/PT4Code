while true
  input = gets.split(" ").map(&:to_i)
  break if input[0] == 0 && input[1] == 0
  input.sort!
  puts "#{input[0]} #{input[1]}"
end