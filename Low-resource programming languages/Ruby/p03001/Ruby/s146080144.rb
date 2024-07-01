n, m, t, s = gets.chomp.split.map(&:to_i)
res = n*m/2.0
count = 0

if n == 2*t && m == s*2
	count = 1
end

puts "#{res} #{count}"