debt = 100000
gets.to_i.times do
  debt += (debt*0.05).to_i
  debt += 1000 - debt%1000 unless debt%1000 == 0
end
puts debt