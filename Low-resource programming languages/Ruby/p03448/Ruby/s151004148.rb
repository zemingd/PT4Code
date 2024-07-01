coin_500 = gets.to_i
coin_100 = gets.to_i
coin_50 = gets.to_i
amount = gets.to_i

result = 0
coin_500.downto(0) do |n|
  if amount < n * 500
    next
  end
  coin_100.downto(0) do |m|
    if amount < n * 500 + m * 100
      next
    end
    coin_50.downto(0) do |l|
      if amount < n * 500 + m * 100 + l * 50
        next
      end
      if amount == n * 500 + m * 100 + l * 50
        result += 1
      end
    end
  end
end
puts result
