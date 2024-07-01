r = gets.to_i
word=gets.chomp
n = r/2
half_word = word.scan(/.{1,#{n}}/)
  if r % 2 !=0
    puts "No"
  else
    if half_word[0] == half_word[1]
      puts "Yes"
    else
      puts "No"
    end  
  end