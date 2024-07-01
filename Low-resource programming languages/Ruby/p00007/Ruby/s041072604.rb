debt = 10_0000
$<.gets.to_i.times do
  debt = debt * 1.05
  debt = (debt / 1000).ceil * 1000
end
puts debt
