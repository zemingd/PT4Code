x = gets.chomp.to_i
for a in 0..1000 do
  for b in -1000..1000 do
    if a**5 - b **5 == x
      puts "#{a} #{b}"
      exit
    end
  end
end