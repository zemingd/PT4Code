x = gets.to_i

0.upto(500) do |i|
  -500.upto(500) do |j|
    if i ** 5 - j ** 5 == x
      puts [i,j].join(" ")
      exit
    end
  end
end
