n,w = gets.chomp.split.map(&:to_i)
wv_arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}
 
dp = Array.new(w+1,0)
 
n.times do |i|
  _w, _v = wv_arr[i]
  w.downto(0).each do |b|
    dp[b] = dp[b-_w] + _v if _w <= b && dp[b] < dp[b-_w] + _v
  end
end
 
puts dp[w]