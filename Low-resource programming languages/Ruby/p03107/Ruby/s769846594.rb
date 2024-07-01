s = gets.chop.chars.sort
p [s.count("0"), s.count("1")].min * 2