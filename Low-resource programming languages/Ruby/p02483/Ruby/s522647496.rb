line = gets
arr = line.split
arr.map!{|i| i.to_i}
arr.sort!
puts "#{arr[0]} #{arr[1]} #{arr[2]}"