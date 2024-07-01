n, w_max = gets.split.map(&:to_i)
items = Array.new(n){gets.split.map(&:to_i)}
dp = Array.new(w_max+1, 0)
items.each do |w, v|
  prev = dp.dup
  prev.each_with_index do |pv, pw|
    nw = pw + w
    nv = pv + v
    dp[nw] = nv if nw <= w_max && prev[nw] < nv
  end
end
puts dp.last
