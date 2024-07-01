r = gets.to_i
word=gets
n = r/2
  if r % 2 != 0
    puts "No"
  else  
    half_word =  word.insert(n, ",").split(",")

    if half_word[0] == half_word[1]
      puts "Yes"
    else
      puts "No"
    end
  end