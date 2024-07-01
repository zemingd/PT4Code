h,n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

puts (a.inject(:+) > h ? "Yes" : "No")