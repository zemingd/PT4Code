n, k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

ans = ""

k.upto(n-1) do |a|
	ans += arr[a] > arr[a-k] ? "Yes\n" : "No\n"
end

puts ans




