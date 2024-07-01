n = gets.to_i
wordlist = []
lastChara =""
n.times do |i|
  word = gets.chomp
  if wordlist.include?(word)
    puts "No"
    exit
  end
  wordlist << word
  if i > 0
    if lastChara != word[0]
      puts "No"
      exit
    end
  end
  lastChara = word[-1]
end
puts "Yes"
