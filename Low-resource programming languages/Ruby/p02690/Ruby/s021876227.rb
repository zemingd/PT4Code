x = gets.chomp.to_i
for a in 0..100 do
  for b in -100..100 do
    if a**5 - b **5 == x
      puts "#{a} #{b}"
      exit
    end
  end
end