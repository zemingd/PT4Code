N = gets.to_i
S = gets.chomp
a = [*"A".."Z"]
puts S.tr(a.to_s, a.rotate(N).to_s)