hash = {}
group_a = [1, 3, 5, 7, 8, 10, 12]
group_b = [4, 6, 9, 11]
group_c = [2]
group_a.each { |num| hash[num] = "group_a" }
group_b.each { |num| hash[num] = "group_b" }
group_c.each { |num| hash[num] = "group_c" }
x, y = gets.split.map(&:to_i)
if hash[x] == hash[y]
  puts "Yes"
else
  puts "No"
end
