n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
(k...n).each do |i|
  prv = 1r
  nxt = prv / a[i-k].to_r * a[i].to_r
  puts (prv < nxt) ? "Yes" : "No"
end
