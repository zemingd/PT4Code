A = gets.to_i
B = gets.to_i

(1..3).each{|i|
  puts i if i != A && i != B
}
