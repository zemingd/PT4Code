N=gets.to_i
S=gets.chomp.to_s.chars

S.map!(&:ord).map!{|x| x+N}.map!{|y| y>=91 ? y-26 : y}.map!(&:chr)

puts S.join('')