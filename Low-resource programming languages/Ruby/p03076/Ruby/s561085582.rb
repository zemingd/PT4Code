ary=$stdin.read.lines.map(&:to_i)
plus = []
result = 0

5.times do |i|
  result += ary[i] / 10 * 10
  plus.push(ary[i]%10) if ary[i]%10 != 0
end
if !plus.empty?
  result += (plus.size-1) * 10
  result += plus.min
end
puts result

 