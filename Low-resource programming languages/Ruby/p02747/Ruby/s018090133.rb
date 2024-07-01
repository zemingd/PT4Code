s = gets.chomp.chars

if s.length%2 != 0
  puts "No"
  exit
end

for i in 0..(s.length-1)
	if i%2 == 0
      if(s[i] != 'h')
        puts "No"
        exit
      end
    else
      if(s[i] != 'i')
        puts "No"
        exit
      end
    end
end
puts "Yes"