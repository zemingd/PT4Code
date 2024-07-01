x = gets.to_i

def is_prime?(n)
  s = Math.sqrt(n).floor
  for i in 2.upto(s)
    if n % i == 0
      return false
    end
  end
  true
end

loop do
  if is_prime?(x)
    break
  else
    x = x.next
  end
end
puts x
