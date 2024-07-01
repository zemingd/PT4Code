s = gets.chomp.split
t = gets.chomp.split
number = 0
3.times{|i|
  if s[i] == t[i]
    number += 1
  end
  }
puts number