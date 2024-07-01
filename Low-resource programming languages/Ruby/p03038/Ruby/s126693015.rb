n, m = gets.chop.split.map(&:to_i)

# aを小さいものから書き換えていくため、ソート
# 合計N回までしか操作しないので、O(N)
a = gets.chop.split.map(&:to_i).sort

bc = []

m.times do |i|
  bc << gets.chop.split.map(&:to_i)
end

bc.sort_by!{|x| x[1]}.reverse!

# aを見るインデックス
idx = 0

bc.each do |b, c|
  break if a[idx] >= c
  b.times do |i|
    if a[idx] < c
      a[idx] = c
    end
    idx +=1
    break if idx == n
  end
  break if idx == n
end

p a.inject(:+)

