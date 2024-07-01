N,W=gets.split.map(&:to_i)

w_ary = []
v_ary = []
N.times do |n|
  w, v = gets.split.map(&:to_i)
  w_ary << w
  v_ary << v
end
dp = []
dp << 0

w_left = W
1.upto(N) do |n|
  max = 0
  w_ary.each_with_index do |w, idx|
    if w <= w_left
      max = v_ary[idx] if max < v_ary[idx]
    end
  end
  idx = v_ary.index(max)
  unless idx.nil?
    dp << dp[n-1] + max
    w_left -= w_ary[idx]
    v_ary.delete_at(idx)
    w_ary.delete_at(idx)
  else
    break
  end
end

puts dp[-1]
