n = gets.to_i
list = gets.split.map(&:to_i)

count = 0
list.each do |a|
  count += 1 if a == count+1
end

count = count==0 ? -1 : n-count

puts count
