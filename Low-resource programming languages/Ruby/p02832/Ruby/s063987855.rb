n = gets.to_i
list = gets.split.map(&:to_i)

count = 0
list.each do |a|
  count += 1 if a == count+1
end

if count == 0
  count = -1
end

puts n-count
