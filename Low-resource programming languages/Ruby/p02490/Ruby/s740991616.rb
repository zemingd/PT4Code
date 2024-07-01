while true
  input = gets.chomp.split(" ").map{|s|s.to_i}.sort!
  break if input[0].to_i==0 && input[1].to_i==0
  puts "#{input[0]} #{input[1]}"
end