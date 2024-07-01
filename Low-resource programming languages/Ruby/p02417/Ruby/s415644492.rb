str = STDIN.gets
count = {}
str.size.times do |i|
  c = str[i].downcase
  unless count.key?(c)
    count[c] = 0
  end
  count[c] += 1
end
("a".."z").each do |c|
  puts "#{c} : #{count[c] || 0}"
end