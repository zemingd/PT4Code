require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n,m = gets.chomp.split.map(&:to_i)
s=[]
m.times do
  tmp = gets.chomp.split.map(&:to_i)
  tmp.shift
  s.push tmp
end
q = gets.chomp.split.map(&:to_i)

ans = 0
d=n
(2**d).times do |i|
  bits = i.to_s(2).split(//)
  (d - bits.length).times{bits.unshift('0')}
  bits.map!(&:to_i)

  flg = true
  s.each_with_index do |sw, index|
    sum = sw.each.map{|e| bits[e-1]}.inject(&:+)
    if sum % 2 != q[index]
      flg = false
      break
    end
  end
  ans += 1 if flg
end

puts ans
