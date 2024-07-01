debt = 100000

n = STDIN.gets.chomp!.to_i

n.times do
  debt *= 1.05
  if debt % 1000 != 0 then
    debt = ((debt / 1000).to_i+1) * 1000
  else
    debt = debt.to_i
  end
end

puts debt.to_i