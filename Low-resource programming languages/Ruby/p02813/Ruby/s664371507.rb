n = gets.to_i
pi = gets.chomp.split(' ').map(&:to_i)
qi = gets.chomp.split(' ').map(&:to_i)

i = 0
a,b = 0,0

(1..n).to_a.permutation(n) do |val|

		a = i if val == pi
		b = i if val == qi
		i += 1
end

puts (a-b).abs