N = gets.to_i

puts (1..N).select{ |n| n % 2 == 1 }.select{ |n|
  (1..n).select{ |m| n % m == 0 }.size == 8
}.size