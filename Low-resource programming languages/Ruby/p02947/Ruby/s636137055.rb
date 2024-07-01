n = gets.to_i
arr = []
n.times { arr << gets.strip.split('').sort.join }
ans = 0
res = []

arr.each do |a|
  res.include?(str) ? (ans += res.count(str)) && res << str : res << str
end

p ans