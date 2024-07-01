n=gets.to_i
ary=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)
prev = -1
result = 0
ary.each do |a|
  result += b[a-1]
  if a - prev == 1
    result += c[a-2]
  end
  prev = a
end

puts result