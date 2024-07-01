x = gets.to_i

b = (-((x.to_f)**(0.2))).to_i

while true do
  a = ((x + b**5) ** (0.2)).to_i

  if a ** 5 - b ** 5 == x
    puts "#{a} #{b}"
    break
  end

  b += 1
end