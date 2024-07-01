str = gets
cnt = 0
("a".."z").each do |i|
  cnt = str.count(i) + str.count(i.upcase)
  puts "i + " : " + cnt.to_s
end