k = gets.to_i
a, b = gets.split(" ").map(&:to_i)
count = 0
(a..b).each do |i|
  if i%k == 0
    count += 1
  end
end
print count > 0 ? "OK" : "NG"