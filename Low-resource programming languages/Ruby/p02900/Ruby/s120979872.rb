def gcd(l, s)
  return l if s == 0

  gcd(s, l % s)
end

def trial_division(n)
  result = n
  (2..(n**0.5).to_i).each do |i|
    if n % i == 0
      result = i
      break
    end
  end
  if result == n
    [n]
  else
    [result] + trial_division(n / result)
  end
end

a, b = gets.split.map(&:to_i)
a, b = [a, b].minmax

num = gcd(b, a)
cands = trial_division(num)
cands |= [1]
puts cands.size
