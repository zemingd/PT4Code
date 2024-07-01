N = gets.to_i
a_list = gets.split.map(&:to_i)
table = Hash.new { 0 }
a_list.each do |a|
  table[a] += 1
end
sorted = table.sort_by { |k, v| -k }.select { |k, v| v >= 2 }
if sorted.size == 0
  puts '0'
elsif sorted.size == 1
  ans = if sorted[0][1] < 4
    0
  else
    sorted[0][0] * 2
  end
  puts ans
else
  ans = if sorted[0][1] >= 4
    sorted[0][0] * 2
  else
    sorted[0][0] * sorted[1][0]
  end
  puts ans
end
