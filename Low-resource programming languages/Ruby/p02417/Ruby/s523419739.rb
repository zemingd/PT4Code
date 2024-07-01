counter = {}
while line = gets
  while c = line.slice!(0)
    c.downcase!
    if counter.has_key?(c)
      counter[c] += 1
    else
      counter[c] = 1
    end
  end
end

("a".."z").each do |i|
  puts "#{i} : #{counter[i].to_i}"
end