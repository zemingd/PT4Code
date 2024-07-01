a = gets.chomp
m = a[0..1].to_i
n = a[2..3].to_i

x = (1 <= m && m <= 12)? 2:0
y = (1 <= n && n <= 12)? 1:0
w = %w(NA YYMM MMYY AMBIGUOUS)
puts w[x+y]