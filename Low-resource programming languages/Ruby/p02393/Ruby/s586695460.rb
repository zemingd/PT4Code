a,b,c = gets.split.map(&:to_i)

x = [a,b,c]
t = x.sort {|a, b| a <=> b }

puts "#{t[0]} #{t[1]} #{t[2]}"