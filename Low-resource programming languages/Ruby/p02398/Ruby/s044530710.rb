a,b,n = gets.chomp.split(" ").map &:to_i
c = 0

(a..b).each { |i|
  c += 1 if n % i == 0
}

puts c