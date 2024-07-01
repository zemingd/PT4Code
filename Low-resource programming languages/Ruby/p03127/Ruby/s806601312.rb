# https://img.atcoder.jp/abc118/editorial.pdf

N = gets.to_i
a = gets.split(' ').map(&:to_i).sort
gcd = a.min

a.each do |e|
  gcd = e.gcd(gcd)
end

puts gcd