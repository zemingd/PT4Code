gets.chomp.to_i
l = gets.chomp.split().map {|v| v.to_i }
total = 0
l.each {|v| total += v }
left = 0
result = total
l.length.times do |i|
  left += l[i]
  right = total - left
  v1 = (left - right).abs
  if v1 < result
    result = v1
  end
end

puts(result)
