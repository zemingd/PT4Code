N,M,*A = `dd`.split.map &:to_i
twos = A.map{ |a| x = 0; while a > 0 && a % 2 == 0 do x += 1; a >>= 1; end; x }
if twos.min == 0 || twos.min < twos.max
  p 0; exit
end

B = A.map{ |a| a / 2 }
Y = B.reduce{ |a,b| a * b / a.gcd(b) }
p (M / Y + 1) / 2