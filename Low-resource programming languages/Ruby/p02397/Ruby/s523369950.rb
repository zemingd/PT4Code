  s = gets.chomp.split(" ")
  if s[0] <= s[1]
    puts "#{s[0]} #{s[1]}"
  else
    puts "#{s[1]} #{s[0]}"
  end