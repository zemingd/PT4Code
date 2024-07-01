arr = $stdin.gets.chomp.split(" ")
arr.map! do |a_j|
	a_j.to_i
end

card = arr[0] + arr[1] + arr[2]

if card >= 22
  ans = "bust"
else
  ans = "win"
end

puts ans