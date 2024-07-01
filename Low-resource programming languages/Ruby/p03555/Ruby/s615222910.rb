c_1=gets.chomp.split("").map(&:to_s)
c_2=gets.chomp.split("").map(&:to_s)
puts c_1 == c_2.reverse ? "YES" : "NO"