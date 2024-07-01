x = gets.to_i
primeNumbers = []

(2...Math.sqrt(x).ceil).each do |i|
  judge = true
  primeNumbers.each do |n|
    if i % n == 0
      judge = false
      break
    end
  end
  primeNumbers.push(i) if judge
end

while true
  judge = true
  primeNumbers.each do |n|
    if x % n == 0
      judge = false
      break
    end
  end

  if judge
    puts x
    exit
  end
  x += 1
end