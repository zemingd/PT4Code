def is_prime(i)
  # 1は素数ではない
  return false if i == 1

  # 2は素数
  return true if i == 2

  judge = true
  (2..i).each do |j|
      # root i までで十分
      break if j > i**0.5 
      if i % j == 0
        judge = false
        break
      end
   end
   return judge   
end

x = gets.to_i

loop do
  if is_prime(x)
    puts x
    break
  end
  x += 1
end
