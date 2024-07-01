x = gets.to_i
0.upto(200) do |i|
  200.downto(0) do |j|
    [-1, 1].each do |p|
      [-1, 1].each do |q|
        if p * (i ** 5) - q * (j ** 5) == x
          puts "#{p * i} #{q * j}"
          exit
        end
      end
    end
  end
end