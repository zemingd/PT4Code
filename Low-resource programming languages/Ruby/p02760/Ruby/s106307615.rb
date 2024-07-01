a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.to_i
nums = []
n.times { nums << gets.to_i }

(0...n).each do |i|
  if a.include?(nums[i])
    a[a.index(nums[i])] = "*"
  elsif b.include?(nums[i])
    b[b.index(nums[i])] = "*"
  elsif c.include?(nums[i])
    c[c.index(nums[i])] = "*"
  end
end

if a[0] == "*" && a[1] == "*" && a[2] == "*"
  puts "Yes"
elsif b[0] == "*" && b[1] == "*" && b[2] == "*"
  puts "Yes"
elsif c[0] == "*" && c[1] == "*" && c[2] == "*"
  puts "Yes"
elsif a[0] == "*" && b[0] == "*" && c[0] == "*"
  puts "Yes"
elsif a[1] == "*" && b[1] == "*" && c[1] == "*"
  puts "Yes"
elsif a[2] == "*" && b[2] == "*" && c[2] == "*"
  puts "Yes"
elsif a[0] == "*" && b[1] == "*" && c[2] == "*"
  puts "Yes"
elsif a[2] == "*" && b[1] == "*" && c[0] == "*"
  puts "Yes"
else
  puts 'No'
end