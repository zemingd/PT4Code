# 153716888
MOD = (10**9) + 7
s = gets.chomp
l = s.size
m = 13
dma = {10=>1, 9=>10, 12=>9, 3=>12, 4=>3, 1=>4}
b = [1, 10, 9, 12, 3, 4][l%6]
before = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
curr = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
l.times do |i|
  curr = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  b = dma[b]
  if s[i] == '?'
    m.times do |j|
      csp = 0
      10.times { |k| csp = (csp + before[(j+k*b)%m])%MOD }
      curr[j] = csp%MOD
    end
  else
    k = s[i].to_i
    m.times do |j|
      curr[j] = before[(j+k*b)%m]%MOD
    end
  end
  before = curr
end
p curr[8]
