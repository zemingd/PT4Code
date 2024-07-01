string = gets(nil).chomp.downcase.split("")
("a".."z").each do |st|
  puts "#{st} : #{string.count(st)}"
end
