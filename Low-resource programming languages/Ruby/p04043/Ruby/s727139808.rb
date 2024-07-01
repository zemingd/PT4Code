input = $stdin.gets.chomp.split(' ')
puts (input.count("7")==2 && input.count("5")==1) ? "YES" : "NO";