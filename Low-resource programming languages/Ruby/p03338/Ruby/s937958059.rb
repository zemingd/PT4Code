n = gets.to_i
s = gets.chomp

max = (1..(n-1)).to_a.map {|i|
    a = s[0..i].chars
    b = s[i..n].chars
    (a & b).size
}.max

puts max