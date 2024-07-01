x = gets.chomp
y = x.split("").map(&:to_i).inject(:+)
x = x.to_i
puts (x % y  == 0) ? "Yes" : "No"