k = gets.chomp.to_f
s ,w= gets.chomp.split(" ").map(&:to_f)
a = (w/k).ceil
b = s/k
puts (a == b && a == (w/k) || a-b>=1) ? "OK" : "NG"