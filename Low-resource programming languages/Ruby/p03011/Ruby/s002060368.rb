arr = gets.chomp.split(" ").map(&:to_i);
arr.sort!

puts arr[0] + arr[1]