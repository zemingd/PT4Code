require 'pp'
n = gets.to_i # 箱番号ラスト
a = gets.split.map(&:to_i)
b = Array.new(n)
b_count = 0
n.downto(1) do |i| # 箱番号
  sum = 0
  ii = i # iiは、増えていく用の箱番号
  while ii <= n
    sum += a[ii-1] if ii % i == 0
    ii += i
  end
  # a.size.times do |ii|
  #   sum += a[ii] if (ii+1) % (i+1) == 0
  # end
  b_count += b[i] = sum % 2
end
p b_count
puts b.map.with_index{|bb,i|bb == 1 ? "#{i} " : ''}.join.chop
