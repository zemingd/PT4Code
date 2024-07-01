h,w = gets.chomp.split(" ").map(&:to_i)

kazu = h*w
if (kazu.odd?)
  kazu += 1
end

puts kazu / 2
