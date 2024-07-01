arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
	a_j.to_i
end

x = (arr[1]+arr[0])

if x % 2 == 0
  puts x / 2
else
  puts "IMPOSSIBLE"
end
