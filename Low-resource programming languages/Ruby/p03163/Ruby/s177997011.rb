n, w_max = gets.split.map(&:to_i)
items = Array.new(n){gets.split.map(&:to_i)}
dp = Array.new(w_max+1, 0)
ans = 0
items.each do |w, v|
  prev = dp.dup
  prev.each_with_index do |pv, pw|
    if pw+w <= w_max && prev[pw+w] < pv+v
      ans = dp[pw+w] = pv+v
    end
  end
end
puts ans
