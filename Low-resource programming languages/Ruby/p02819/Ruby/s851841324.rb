x = gets.to_i

def prime?(n)
  if n <= 1
    false
  end

  (2..Math.sqrt(n)).each do |x|
    if n % x == 0
      return false
    end
  end

  true
end


(x..Float::INFINITY).each do |n|
  if prime? n
    puts n
    break
  end
end
