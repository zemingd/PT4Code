s = gets.gsub(" ","").split("")
("a".."z").each do |i|
  puts "#{i} : #{s.select{|j| j.casecmp(i) == 0}.length}"
end