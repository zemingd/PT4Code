n = gets.to_i
a = gets.split.map(&:to_i)

flag = false
if n==3
  flag = true
elsif n%3==0
  flag = true if a.each_slice(3).map(&:to_a).uniq.count == 1
else
  flag = true if a.uniq.count == 1
end

puts flag ? "Yes" : "No"
