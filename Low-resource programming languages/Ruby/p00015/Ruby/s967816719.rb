num = gets.chomp.to_i

num.times do
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  c = a+b
  if c.to_s.length <= 80
    puts c
  else
    puts "overflow"
  end
end