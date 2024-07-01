num = gets.chomp.to_i
digit = 100000
num.times do
  digit = digit * 1.05 / 1000
  digit = digit.ceil * 1000
end
puts digit