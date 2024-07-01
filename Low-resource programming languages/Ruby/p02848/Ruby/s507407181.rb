N = gets.to_i
S = gets.chomp
a = [*"A".."Z"]
puts S.tr(a.join, a.rotate(N).join)