def _gcd(a, b)
  if a > b
    return a if b == 0

    _gcd(b, a % b)
  else
    return b if a == 0

    _gcd(a, b % a)
  end
end

def gcd(numbers)
  ans = numbers.first

  numbers[1..-1].each do |n|
    ans = _gcd(ans, n)
  end

  return ans
end

N = gets.to_i
A = gets.split.map(&:to_i).sort

p gcd(A)
