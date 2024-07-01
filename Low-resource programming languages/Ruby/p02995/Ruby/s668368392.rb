a, b, c, d = gets.split.map(&:to_i)
if a == b
  if a%c!=0 && a%d!=0
    puts 1
  else
    puts 0
  end
  exit
end
# aからbの中のcの倍数
cc = (b-a)/c + 1
# aからbの中のdの倍数
cd = (b-a)/d + 1
lcm = c*d / c.gcd(d)
# aからbの中のlcm(c,d)の倍数
ccd = (b-a)/lcm + 1

ans = b-a+1
" 
cでもdでも割り切れない数
= 全体の数-cで割り切れる数-dで割り切れる数+cでもdでも割り切れる数
"
ans -= (cc+cd-ccd)
puts ans