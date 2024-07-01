S = gets.chomp
A = S.chars.map{ |c| c == "?" ? nil : c.to_i }
#$stderr.puts S, S.size, A.size
Mod = 10**9 + 7
dp0 = Array.new(13, 0)
dp0[0] = 1
deca = 1
a09 = (0..9).to_a
A.reverse_each{ |a|
  dp1 = Array.new(13, 0)
  (a ? [a] : a09).each{ |a|
    b = deca * a
    (0...13).each{ |i| dp1[(i + b) % 13] += dp0[i] }
  }
  deca = deca * 10 % 13
  dp0 = dp1.map{ |v| v % Mod }
}
#p dp0
p dp0[5]
