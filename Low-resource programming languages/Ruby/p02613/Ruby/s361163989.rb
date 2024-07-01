lines = $stdin.read.lines.map(&:chomp)[1..-1]
table = Hash.new(0)
lines.each {|key| table[key] += 1 }
%W(AC WA TLE RE).each {|key|
	puts "#{key} x #{table[key]}"
}
