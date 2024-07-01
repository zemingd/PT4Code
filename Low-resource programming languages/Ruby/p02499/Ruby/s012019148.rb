str = ""
while input = gets
  str += input.downcase
end
cnt = 0
("a".."z").each do |i|
  cnt = str.count(i)
  puts "#{i} : #{cnt}"
end