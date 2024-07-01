a = gets.split.map(&:to_i)
hs = Hash.new(0)
a.each{|an| hs[an] += 1}
flag = 0
hs.each{|k,v| flag = 1 if v == 2}
(flag == 1) ? (puts "Yes"):(puts "No")