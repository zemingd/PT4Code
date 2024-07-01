coin_500 = gets.to_i
coin_100 = gets.to_i
coin_50 = gets.to_i
amount = gets.to_i

result = 0
coin_500.times do |n|
  if amount < n * 500
    break
  end
  coin_100.times do |m|
    if amount < n * 500 + m * 100
      break
    end
    coin_50.times do |l|
      if amount < n * 500 + m * 100 + l * 50
        break
      end
      if amount = n * 500 + m * 100 + l * 50
        result += 1
      end
    end
  end
end
puts result