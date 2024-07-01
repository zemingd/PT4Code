require "prime"

a, b = gets.split.map(&:to_i)
small, large = [a, b].sort

def gcd_of_two(a, b)
  small, large = [a, b].sort
  if small == 0
    return large
  else
    gcd_of_two(small, large % small)
  end
end
gcd = gcd_of_two(small, large)

def func2(num)
  # p_divisors = []
  count = 0
  1.step((num**(1/2.to_f)).floor) do |i|
    if num % i == 0
      # p_divisors << i if i == 1 || i.prime?
      count += 1 if i == 1 || i.prime?
      j = num/i
      # p_divisors << j if i != j && j.prime?
      count += 1 if i != j && j.prime?
    end
  end
  # p_divisors.count
  count
end
puts func2(gcd)
