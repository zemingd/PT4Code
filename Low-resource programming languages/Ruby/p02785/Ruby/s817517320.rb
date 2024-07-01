n, k = gets.split.map &:to_i
hs = gets.split.map &:to_i

hs.sort!

if hs.size <= k then
	puts 0
else
	puts hs[0..-k-1].inject(:+)
end
