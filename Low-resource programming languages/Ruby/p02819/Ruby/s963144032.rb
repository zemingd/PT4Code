def isPrime(num)
  root = Math.sqrt(num).floor
  (2..root).each do |n|
    if num%n == 0
      return false
    end
  end
  true
end


x = gets.to_i
num = x
loop do
  #puts num
  if isPrime(num)
    puts num
    break
  else
    num += 1
  end
end

