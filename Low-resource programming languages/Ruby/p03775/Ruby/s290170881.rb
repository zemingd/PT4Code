n = gets.to_i

Math.sqrt(n).to_i.downto(1) do |i|
    if n % i == 0
        puts Math.log10(n / i).to_i + 1
        break
    end
end