a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

puts [a*b, (a+b)*2].join ' '