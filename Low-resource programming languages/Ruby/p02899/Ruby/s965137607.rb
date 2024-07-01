N = gets.to_i
a = gets.split.map &:to_i

ans = []
N.times do |i|
  ans[a[i] - 1] = i + 1
end

str = ""
N.times do |i|
  str << ans[i].to_s + " "
end

puts str.strip