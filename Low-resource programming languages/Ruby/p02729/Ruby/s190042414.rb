def xC2(x)
  return 0 if x <= 1
  return x*(x-1)/2
end

n, m = gets.chomp.split(" ").map{|i|i.to_i}
puts xC2(n) + xC2(m)