a = gets.split(" ");a.map!{|x|x.to_i}
a.sort!
puts a[2] - a[0]