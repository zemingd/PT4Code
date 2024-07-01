N, M = gets.chomp.split(' ').map(&:to_i)
ks = []
M.times do
  t = gets.chomp.split(' ').map(&:to_i)
  ks << [t.shift, t]
end
P = gets.chomp.split(' ').map(&:to_i)
result = 0
(0..2**N-1).map{|n|n.to_s(2).rjust(N, '0')}.each do |c|
  light = false
  M.times do |i|
    xor = 0
    ks[i][0].times do |j|
      xor ^= c[ks[i][1][j] - 1].to_i
    end
    if xor != P[i]
      light = true
      break
    end
  end
  if !light
    result += 1
  end
end
puts result