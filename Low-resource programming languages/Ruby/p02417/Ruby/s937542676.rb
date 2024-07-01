s = ""
while s += gets.downcase.chomp
end
("a".."z").each do |c|
  puts "#{c} : #{s.count(c)}"
end