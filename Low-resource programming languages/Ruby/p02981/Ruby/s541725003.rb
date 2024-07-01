S = gets.chomp.split("").map(&:to_i)

train = S[0]*S[1]
taxi = S[2]

if taxi < train
  puts taxi
else
  puts train
end
