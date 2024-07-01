n,k = gets.strip.split.map(&:to_i)
num = gets.strip.split.map(&:to_i)
num.sort!.reverse!
puts num[0..k-1].sum