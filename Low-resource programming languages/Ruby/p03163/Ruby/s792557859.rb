n, _w = gets.split.map(&:to_i)
 
dp = Array.new(_w + 1, 0)
n.times do
  w, v = gets.split.map(&:to_i)
  _w.downto(w) do |nw|
    nv = dp[nw - w] + v
    dp[nw] = nv if nv > dp[nw]
  end
end

puts dp[_w]

