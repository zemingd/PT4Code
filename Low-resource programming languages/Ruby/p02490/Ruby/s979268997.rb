while true
  input = gets.chomp.split(" ").sort!
  break if input[0].to_i==0 && input[1].to_i==0
  puts "#{input[0]} #{input[1]}"
end