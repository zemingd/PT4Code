sen = ""
while (s = gets) != nil
sen += "#{s}".downcase
end
cnt = Array.new(26)
i = 0
counter = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
counter.each do |ob|
cnt[i] = sen.count(ob)
i += 1
end
i = 0
cnt.each do |c|
puts "#{counter[i]} : #{c}"
i += 1
end