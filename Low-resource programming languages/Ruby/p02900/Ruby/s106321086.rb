require "prime"

A, B = gets.split.map(&:to_i)

small, large = [A, B].sort

def gcd_of_two(a, b)
  small, large = [a, b].sort
  if small == 0
    return large
  else
    gcd_of_two(small, large % small)
  end
end

gcd = gcd_of_two(small, large)

count = 1

Prime.each(gcd) do |prime|
  count += 1 if small % prime == 0 && large % prime == 0
end

puts count
