x = gets.to_i

def is_not_prime?(n)
  for i in Math.sqrt(n).floor.downto(2)
    if n % i == 0
      return true
    end
  end
  false
end

loop do
  if is_not_prime?(x)
    x = x.next
  else
    break
  end
end
puts x
