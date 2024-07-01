include Math

num = gets.chomp.to_i

num.times do
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  c = a+b
  if Math::log10(c)+1 <= 80
    puts c
  end
end