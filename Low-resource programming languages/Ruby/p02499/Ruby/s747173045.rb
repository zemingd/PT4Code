while str = gets
  str.downcase
end
cnt = 0
("a".."z").each do |i|
  cnt = str.count(i)
  puts "#{i} : #{cnt}"
end