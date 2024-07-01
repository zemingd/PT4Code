word = gets.chomp.downcase
cnt = 0
while (line = gets.chomp) != "END_OF_TEXT"
  line.downcase.split.each { |str|
    if str == word 
      cnt += 1
    end
  }
end

puts cnt