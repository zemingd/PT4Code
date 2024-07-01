a = gets.chomp.chars
b = (a.all? {|w| w == 'a' || w == 'b' || w == 'c' } && a.uniq.length == 3) ? 'aa' : 'bb'
puts b