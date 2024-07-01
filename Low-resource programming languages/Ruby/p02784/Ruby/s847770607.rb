h=gets.split.map(&:to_i)
a=gets.chomp.split.map(&:to_i)

puts h[0]<=a.inject(:+) ? "Yes" : "No"