s = gets.chomp.split("")
cnt = 0
s.each{|c| cnt += 1 if c == 'o'}
puts 700 + 100*cnt