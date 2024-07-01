n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
prv = 1
a[0...k].each do |ax|
  prv *= ax
end
(k...n).each do |i|
  nxt = prv / a[i-k] * a[i]
  puts (prv < nxt) ? "Yes" : "No"
  prv = nxt
end
