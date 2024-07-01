def lscan; gets.split.map(&:to_i); end

m = ['SUN','MON','TUE','WED','THU','FRI','SAT']
i = m.index(gets.chomp)

puts 7-i