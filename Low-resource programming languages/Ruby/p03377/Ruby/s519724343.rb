cat, catDog, catSum = gets.strip.split(" ").map {|str|str.to_i}

result = (cat + catDog >= catSum && cat <= catSum) ? "Yes" : "No"

puts result