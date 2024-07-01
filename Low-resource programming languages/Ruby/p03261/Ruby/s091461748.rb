wordlist = []
m = ""
num = gets.to_i
for i in 1..num do
  for i in 1..num do
    if wordlist.include?(word)
      puts "No"
      exit
    end
    wordlist.push(word)    
    if i > 1
      if word[0] != m
        puts "No"
        exit
      end
    end
end
puts "Yes"