def lscan; gets.split.map(&:to_i); end

m = ['SUN','MON','TUE','WED','THU','FRI','SAT']
i = m.index(gets.chomp)

puts m[i-6]