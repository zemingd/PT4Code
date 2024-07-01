freq = Hash.new(0)
while line = gets
    line.chomp.split("").map{|c| c.downcase}.each{|c| freq[c] += 1}
end
("a".."z").each{|c| puts "#{c} : #{freq[c]}"}