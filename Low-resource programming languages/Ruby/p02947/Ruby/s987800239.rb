n = gets.to_i
arr = []
n.times { arr << gets.strip.split('').sort.join }
ans = 0
res = []

arr.each do |a|
  res.include?(a) ? (ans += res.count(a)) && res << a : res << a
end

p ans