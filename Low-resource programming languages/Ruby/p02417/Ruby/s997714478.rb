str = []
while tmp = gets.chomp do
    break if tmp.size == 0
    str << tmp.downcase.split("")
end
str.flatten!

("a".."z").each do |alp|
  cnt = str.count{|char| char == alp}
  puts "#{alp} : #{cnt}"
end
