n = gets.to_i
a = gets.split.map(&:to_i)
result = {}
n.times do |i|
  result[a[i]] = i+1
end

ans = result[1].to_s
2.upto(n) do |i|
  ans += ' ' + result[i].to_s
end

puts ans