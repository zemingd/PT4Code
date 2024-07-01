#a = gets.split(" ").map{|x| x.to_i}
=begin
n = gets.to_i
count = 0
n.times do |i|
  if((i + 1) % 2 == 1)
    count += 1
  end
end
p count.to_f / n.to_f
=end

=begin
nk = gets.split(" ").map{|x| x.to_i}
N = nk[0]
K = nk[1]

h = gets.split(" ").map{|x| x.to_i}
count = 0

N.times do |i|
  if(K <= h[i])
    count += 1
  end
end
p count
=end

=begin
N = gets.to_i
a = gets.split(" ").map{|x| x.to_i}

array = Array.new(N)
N.times do |i|
  array[a[i] - 1] = i + 1
end
N.times do |i|
  print "#{array[i]} "
end
=end

require 'prime'

#約数を求めるやつ
class Integer
  def my_divisor_list3
    return [1] if self == 1
    first, *rest = Prime.prime_division(self).map do |p, k|
      (0..k).map{|i| p**i}
    end
    first.product(*rest).map do |a|
      a.inject(&:*)
    end.sort
  end
end

ab = gets.split(" ").map{|x| x.to_i}
A = ab[0]
B = ab[1]
#aとbの約数を求める
a_yakusu = A.my_divisor_list3
b_yakusu = B.my_divisor_list3

ans = Array.new()
#配列の論理積で公約数を出す(なぜ出るかは謎)
koyakusu = a_yakusu & b_yakusu

(koyakusu.size).times do |i|
  hoge = koyakusu[-(i + 1)].my_divisor_list3 & koyakusu
  if hoge.size == 1 or hoge.size == 2
    ans.push(koyakusu[-(i + 1)])
  end
end
p ans.size
