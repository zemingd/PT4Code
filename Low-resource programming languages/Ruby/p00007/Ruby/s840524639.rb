debt = 100000
gets.chomp.to_i.times do
  debt += ( ( (debt * 0.05).to_i + 999 ) / 1000 ).ceil * 1000
end
puts debt