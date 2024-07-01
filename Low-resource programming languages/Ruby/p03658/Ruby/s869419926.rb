# AtCoder Beginner Contest B067

ans = 0
n,k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)

array = array.sort{ |a,b| b<=>a }

k.times do |i|
	ans += array[i]
end

puts ans