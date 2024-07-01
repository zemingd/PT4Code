s,t = gets.split('\n').map(&:to_s)

s_new = s.chars.sort.join
t_new = t.chars.sort.reverse.join

if s_new < t_new
	puts 'Yes'
else
	puts 'No'
end