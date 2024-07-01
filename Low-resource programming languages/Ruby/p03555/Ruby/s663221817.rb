c1Strings = gets.chomp
c2Strings = gets.chomp
c1StringsRotaion = c2Strings.reverse
c2StringsRotaion = c1Strings.reverse
puts (c1StringsRotaion == c1Strings)&&(c2StringsRotaion == c2Strings) ? "YES" : "NO"