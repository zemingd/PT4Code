count={}
("a".."z").each do |e|
  count.store(e,0)
end
while (input = gets)
  input = input.downcase
  input.split("").each do |e|
    count[e] += 1 if count.key?(e)
  end
end
("a".."z").each do |e|
  puts "#{e} : #{count[e]}"
end