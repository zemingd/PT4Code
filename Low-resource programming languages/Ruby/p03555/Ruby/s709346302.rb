arr = []
arr << gets.chomp
arr << gets.chomp
arr2 = arr.dup
arr2.map!{|m| m.reverse}
arr2.reverse!
puts arr == arr2 ? "YES" : "NO"