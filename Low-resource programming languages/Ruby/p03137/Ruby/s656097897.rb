n, m = gets.split.map &:to_i
x = gets.split.map &:to_i

if m <= n then
	puts 0
	exit
end

x = x.sort

diff = []

(0...x.size - 1).each{ |i|
	diff << x[i+1] - x[i]
}

diff = diff.sort.reverse

puts x[-1] - x[0] - diff[0...n].inject(:+)
