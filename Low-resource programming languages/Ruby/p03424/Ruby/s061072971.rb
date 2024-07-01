n = gets.to_i
s = gets.chomp.split
cnt = 0
cl = Hash.new(0)
s.each{|c| cl[c] += 1}
cl.each{|v| cnt += 1}
(cnt == 3) ? (puts "Three"):(puts "Four")