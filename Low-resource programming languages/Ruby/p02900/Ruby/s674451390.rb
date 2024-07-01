A, B = gets.split().map(&:to_i)
common_divisors = []

def is_prime_number(num)
  (2..num**0.5).each do |i|
    return false if num % i == 0
  end
  return true
end

def divisors(num)
  return [1] if num == 1
  div = []
  (1..num**0.5).each do |i|
    if num % i == 0
      div.push(i) if is_prime_number(i)
      div.push(num/i) if is_prime_number(num/i)
    end
  end
  div
end

divisors(A).each do |i|
  common_divisors.push(i) if B % i == 0
end

puts common_divisors.count