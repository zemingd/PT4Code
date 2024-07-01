a = gets.strip.split.map(&:to_i)
K = gets.to_i
puts a.sort[0]+a.sort[1]+(a.sort[2]) * (2 ** K)