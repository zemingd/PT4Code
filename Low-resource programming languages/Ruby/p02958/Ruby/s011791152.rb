n = gets.to_i
p = gets.chomp.split.map(&:to_i)
x = p.sort

sum = 0
p.zip(x).each do |i,y|
  if i == y
    sum += 1
  end
end

if sum >= n-2
  puts "YES"
else
  puts "NO"
end