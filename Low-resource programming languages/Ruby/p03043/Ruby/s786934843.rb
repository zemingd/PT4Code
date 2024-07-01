N = gets.to_i
K = gets.to_i

p = 0

N.times do |i|
  over = false
  ac = 0
  pp = 1.quo(N)
  while over
    ac += i * 2
    pp = pp * 1/2
    if ac >= K
      over = true
    end
  end
  p += pp
end

puts p