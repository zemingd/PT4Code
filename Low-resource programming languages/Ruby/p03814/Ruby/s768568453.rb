s=gets.chomp
aPotionIndex = s.index("A")
zPotionIndex = s.length - s.reverse.index("Z") - 1
puts (zPotionIndex-aPotionIndex+1)