n = gets.chomp.to_i
hash = Hash.new{0}
prev_word = ""
n.times do
  word = gets.chomp
  if word[0] != prev_word[-1]
    puts "No"
    exit
  else
    hash[word] += 1
    if hash[word] > 1
      puts "No"
      exit
    end
  end
  prev_word = word
end
puts "Yes"