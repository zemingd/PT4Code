n = gets.to_i
p = gets.split.map(&:to_i)

sorted = p.sort
diff = []

p.each_index do |i|
  if p[i] != sorted[i]
    diff << p[i]
  end
end

if diff.size == 2 || diff.size == 0
  puts "YES"
else
  puts "NO"
end