s = gets
("a".."z").each do |c|
  puts "#{c} : #{s.count(c)}"
end