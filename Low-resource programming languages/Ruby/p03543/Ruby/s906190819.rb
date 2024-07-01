n=gets.chars
puts ((n.count(n[0])>=3) || (n.count(n[1])>=3)) ? 'Yes' : 'No'