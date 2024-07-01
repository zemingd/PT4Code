n, m = gets.split.map(&:to_i)
a = Array.new(m){gets.to_i}
a << n + 1
t = Array.new(m + 1){0}
c = 0
bad = false
(0...m).each{|i|
	if a[i + 1] - a[i] == 1
		bad = true
	end
}
unless bad
	a.each_index{|i|
		w = a[i] - c - 1
		0.upto(w / 2){|x|
			y = w - x * 2
			if x > y
				tmp = x
				x = y
				y = tmp
			end
			if x == 0
				t[i] += 1
			else
				t[i] += ((y + 1)..(x + y)).inject(:*) / (1..x).inject(:*)
			end
		}
		c = a[i] + 1
	}
	puts t.inject(:*) % 1000000007
else
	puts 0
end
