N = gets.chomp

sn = 0
for i in 0..(N.size - 1) do
  sn += N[i].to_i
end

puts N.to_i % sn == 0 ? 'Yes' : 'No'