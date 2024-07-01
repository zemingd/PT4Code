n=gets.chomp.split("").map(&:to_i)
fx=n.inject(:+)
puts n.join("").to_i%fx==0 ? "Yes":"No"
