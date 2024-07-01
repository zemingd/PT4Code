# n以下の自然数kの倍数がいくつあるか返す
def cnt(n, k)
  if n < k or n == 0
    return 0
  end
  (n/k).floor
end


a, b, c, d = gets.split.map(&:to_i)
if a == b
  if a%c!=0 && a%d!=0
    puts 1
  else
    puts 0
  end
  exit
end
# a以上b以下のcの倍数の個数
cc = cnt(b, c) - cnt(a-1, c)
# a以上b以下のdの倍数の個数
cd = cnt(b, d) - cnt(a-1, d)

lcm = c*d / c.gcd(d)
# a以上b以下のlcm(c,d)の倍数の個数
ccd = cnt(b, lcm) - cnt(a-1, lcm)

ans = b-a+1
" 
cでもdでも割り切れない数
= 全体の数-cで割り切れる数-dで割り切れる数+cでもdでも割り切れる数
"
ans -= (cc+cd-ccd)
puts ans