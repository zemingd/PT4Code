input = gets.chomp.downcase
count={}
("a".."z").each do |e|
  count.store(e,0)
end
input.gsub!(" ","").split("").length.times do |e|
  count[input[e]] += 1 if count.key?(input[e])
end
("a".."z").each do |e|
  puts "#{e} : #{count[e]}"
end