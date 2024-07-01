n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

1.upto(n){|i|
  puts a.count(i)
}