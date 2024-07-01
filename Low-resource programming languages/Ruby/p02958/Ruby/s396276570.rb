n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
mihon = a.sort
count = 0
n.times do |i|
	if a[i] != mihon[i]
      count += 1
    end
end
if count <= 2
  puts "YES"
else
  puts "NO"
end

