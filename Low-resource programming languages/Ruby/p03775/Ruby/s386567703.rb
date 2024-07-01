n = gets.chomp.to_i
Math.sqrt(n).floor.downto(1) do |i|
    if n % i == 0
        puts (n / i).to_s.size
        exit
    end
end
