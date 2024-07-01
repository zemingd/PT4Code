a, b = gets.chomp.split

ans = if a < b
	   "<"
	  elsif a == b
       "="
	  else
		">"
      end

puts ans
