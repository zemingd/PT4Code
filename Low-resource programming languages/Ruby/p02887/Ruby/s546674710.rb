n = gets.to_i
slime = gets.chomp.split("")
ctn = 1
for i in 0..n-2
  if slime[i] != slime[i+1]
  ctn += 1
  end
end
puts ctn