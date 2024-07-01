alphabets = Array.new(26, 0)
while line = gets
  chars = line.chomp.downcase.chars
  chars.each do |c|
    i = c.ord - 97
    alphabets[i] += 1 if i >= 0 && i <= 25    
  end
end

alphabets.each_with_index do |n, i|
  puts "#{(i + 97).chr} : #{n}"
end

