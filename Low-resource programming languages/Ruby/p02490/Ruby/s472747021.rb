while true
  input = gets.chomp.split(" ").sort!
  puts "#{input[0]} #{input[1]}"
  break if input[0].to_i==0 && input[1]==0
end