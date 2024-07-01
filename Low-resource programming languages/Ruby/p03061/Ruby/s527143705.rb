io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
lar=Array.new(n) #left gcd累計
rar=Array.new(n) #right gcd累計
lar[0]=a[0]
(1...n).each do |i|
  lar[i]=lar[i-1].gcd(a[i])
end
rar[-1] = a[-1]
(n-2).downto(0).each do |i|
  rar[i]=a[i].gcd(rar[i+1])
end
ar= [
lar[-2],
(1..n-2).map{ |i|lar[i-1].gcd(rar[i+1])},
rar[1]
]
p ar.flatten.max
