N, A, B, C = gets.chomp.split(" ").map(&:to_i)
l = Array.new(N)
N.times do |i|
  l[i] = gets.chomp.to_i
end
l.sort!

ans = 0

t = [C, B, A]
m = t & l
l -= m
t -= m

# tとlの全組み合わせでそれぞれ10以内のものがあれば確定させる
candidates = []
t.each do |tt|
  l.each do |ll|
    cost = (tt - ll).abs
    if cost <= 10
      candidates << [tt, ll, cost]
    end
  end
end
candidates.sort_by {|tt,ll,cost| cost}.each do |tt,ll,cost|
  if t.include?(tt) && l.include?(ll)
    ans += cost
    t.delete_at(t.index(tt))
    l.delete_at(l.index(ll))
  end
end

t.each do |tt|
  # 一番短いものより短い場合は縮めるしかない
  if tt < l.first
    ans += (l.shift - tt)
    next
  end
  # 最も近いもの
  nn = l.sort_by {|ll| (tt - ll).abs }.first
  # 組み合わせを探索
  src = [nn]
  min_cost = (tt - nn).abs
  2.upto(l.size) do |n|
    l.combination(n).each do |c|
      val = c.inject(&:+)
      cost = 10 * (c.size - 1) + (tt - val).abs
      if cost < min_cost
        min_cost = cost
        src = c
      end
    end
  end
  ans += min_cost
  l = l - src
end
puts ans
