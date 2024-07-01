h,w = gets.chomp.split(" ").map(&:to_i)

if (h == 1 || w == 1)
  puts 1
  exit
end

kazu = h*w
if (kazu.odd?)
  kazu += 1
end

puts kazu / 2
