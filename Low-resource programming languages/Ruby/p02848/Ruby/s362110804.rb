N = gets.chop.to_i
S = gets.chop

a = [*"A".."Z"]
puts S.tr(a.join, a.rotate(N).join)