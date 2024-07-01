n = $stdin.gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
ans = 1
max = 10**18
if arr.index(0)
  puts "0"
  exit
end
arr.each do |k|
	ans = ans * k
    if ans > max
    puts "-1"
    exit
    end
end
puts ans
