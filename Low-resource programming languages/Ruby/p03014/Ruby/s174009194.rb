# D - Lamp
def print_room(r)
	r.each do |line|
		print "#{line}\n"
	end
end

def lamp
	h,w = gets.chomp.split(/\s/).map{|x| x.to_i}

	s = Array.new(h+2)
	s[0] = Array.new(w+2, '#')
	for i in 1..(h)
		s[i] = ['#', gets.chomp.split(//), '#'].flatten
	end
	s[h+1] = Array.new(w+2, '#')

	s.each_with_index do |t, i|
		t.each_with_index do |v, j|
			n = -1
			case s[i][j]
			when '#' then n = 0
			when '.' then n = 1
			else n = -2
			end
			s[i][j] = n
		end
	end

#	puts h, w
#	print_room(s)
#	t = s
	s.each_with_index do |u, i|
		next if i == 0 or i == s.length-1

		j = 1
		st = 0
		while j <= w+1
			case st
			when 0
				if s[i][j] == 0
					j += 1
					next
				else
					beg = j
					st = 1
				end
			when 1
				if s[i][j] == 0
					for k in beg..(j-1)
						s[i][k] = j-beg
					end
					j += 1
					st = 0
					next
				end
			end

			j += 1
		end
	end

	max = 0
	#	puts h, w
#	print_room(t)
#	u = t
	#u.each_with_index do |v, i|
	for i in 1..w
		next if i == 0 or i == s[0].length-1

		j = 1
		st = 0
		while j <= h+1
			case st
			when 0
				if s[j][i] == 0
					j += 1
					next
				else
					beg = j
					st = 1
				end
			when 1
				if s[j][i] == 0
					for k in beg..(j-1)
						s[k][i] += j-beg-1
						max = [max, s[k][i]].max
					end
					j += 1
					st = 0
					next
				end
			end

			j += 1
		end
	end

#	puts h, w
#	print_room(u)

	puts max

end

lamp