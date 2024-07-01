a,b,c = gets.split.map &:to_i
i = a
cont = 0
(a..b).each { |i|
  cont += 1 if c%i == 0
}

puts cont