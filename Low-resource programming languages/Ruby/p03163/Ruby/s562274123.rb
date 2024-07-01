n,w = gets.chomp.split.map(&:to_i)
wv_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

dp = Array.new(w+1, 0)

n.times do |i|
  part_w, part_v = wv_arr[i]
  w.downto(0) do |sum_w|
    a = dp[sum_w - part_w] + part_v
    b = dp[sum_w]
    if sum_w - part_w >= 0 && a > b
      dp[sum_w] = a
    else
      dp[sum_w] = b
    end
  end
end

puts dp[w]