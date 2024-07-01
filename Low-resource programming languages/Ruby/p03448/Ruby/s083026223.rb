a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
$abc = [a,b,c]
$x = gets.chomp.to_i

$coin = [500, 100, 50]
def calc(sum, now)
	pattern = 0
	return 1 if sum == $x
	return 0 if now >= 3
	(0..$abc[now]).each do |i|
		pattern += calc(sum + $coin[now] * i, now + 1)
	end
	#puts "sum:#{sum} now:#{now} pattern:#{pattern}"
	return pattern
end

puts calc(0, 0)