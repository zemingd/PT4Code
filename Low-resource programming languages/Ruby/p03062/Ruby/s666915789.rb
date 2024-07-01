n = $stdin.gets.to_i
ary = $stdin.gets.split.map(&:to_i)

count = 0
result = 0
min = 1000000000

n.times do |i|
  if ary[i] < 0
    count += 1
  end
  if min > ary[i].abs
    min = ary[i].abs
  end
  result += ary[i].abs
end

if count % 2 != 0
  result -= min * 2
end

puts result