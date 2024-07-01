require 'pp'
n = gets.to_i # 箱番号ラスト
a = gets.split.map(&:to_i)
b = Array.new(n)
b_count = 0
n.downto(1) do |i| # 箱番号
  sum = 0
  ii = i# iiは、増えていく用の箱番号
  ii += i
  while ii <= n
    # p [sum,i,ii,n,b]
    sum += b[ii-1]
    ii += i
  end
  if sum % 2 == a[i-1]
    b[i-1] = 0
  else
    b_count += b[i-1] = 1
  end
end
p b_count
puts b.map.with_index(1){|bb,i|bb == 1 ? "#{i} " : ''}.join.chop
