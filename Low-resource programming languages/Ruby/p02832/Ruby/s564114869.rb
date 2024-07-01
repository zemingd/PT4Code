N = gets.chomp.to_i
a_list = gets.chomp.split.map(&:to_i)
result = 0
current = 1
a_list.each do |x|
  if x == current
    current += 1
  else
    result += 1
  end
end

if N == result
  puts -1
else
  puts result
end