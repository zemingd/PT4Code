a, b, x = gets.split.map(&:to_i)
(a <= x && x <= a+b) ? (puts "YES"):(puts "NO")