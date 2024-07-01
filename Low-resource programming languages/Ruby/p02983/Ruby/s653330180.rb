L, R = gets.split().map(&:to_i)

ans = 10000

(L..R).each do |i|
  (i+1..R).each do |j|
    ans = [ans, (i*j)%2019].min
    if (i*j) % 2019 == 0
      puts ans
      exit
    end
  end
end

puts ans