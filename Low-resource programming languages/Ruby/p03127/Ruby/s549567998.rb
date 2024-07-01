n = gets.to_i
a = gets.chomp.split.map(&:to_i).sort.reverse
b = []
for i in 0...(n-1)
  for j in (i+1)...n
    b.push(a[i] % a[j])
  end
end

if b.select{|i| i != 0}.length == 0 || a.map{|i| i % b.select{|i| i != 0}.min}.min == 0
  puts [a, b.select{|i| i != 0}].flatten.min
else
  puts a.map{|i| i % b.select{|i| i != 0}.min}.min
end
  