n = gets.to_i
wordlist = []
last =""
n.times do |i|
  word = gets.chomp
  if wordlist.include?(word)
    puts "No"
    exit
  end
  wordlist << word
  if i > 0
    if last != word[0]
      puts "No"
      exit
    end
  end
  last = word[-1]
end
puts "Yes"
