n = gets.to_i
p (1..n).select{|i|
  (i % 2) == 1
}.select{|j|
  if (1..j).select{|i|(j % i) == 0 }.size == 8
  j
  end
}.size
