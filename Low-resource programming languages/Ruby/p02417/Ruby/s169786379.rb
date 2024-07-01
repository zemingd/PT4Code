counter = Hash.new(0)
while (str = gets) && str.chomp != ""
  #puts "## #{str}"
  str.each_char{|char| counter[char.downcase] += 1}
end
("a".."z").each{|char| puts "#{char} : #{counter[char]}"}
