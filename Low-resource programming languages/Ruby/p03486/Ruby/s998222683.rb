s,t = gets.split(' ').map(&:to_s)

s_new = s.chars.sort
t_new = t.chars.sort.reverse

if s_new[0] < t_new[0]
	puts 'Yes'
else
	puts 'No'
end