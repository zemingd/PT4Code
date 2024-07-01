io = STDIN
a,b,c=io.gets.chomp.split.map(&:to_i)
puts (c>=a)&&(c<=b) ? 'Yes' : 'No'