n = gets.to_i
a = gets.split.map(&:to_i)

flag = false
if n==3
  flag = true
elsif n%2==0
  a1,a2 = a.sort.each_slice(n/2).map(&:to_a)
  flag = true if a1.uniq.count == 1 && a2.uniq.count ==1
else
  flag = true if a.uniq.count == 1
end

puts flag ? "Yes" : "No"