h = gets.strip.to_i

answer = 2 ** (Math.log(h, 2).floor + 1) - 1

puts answer