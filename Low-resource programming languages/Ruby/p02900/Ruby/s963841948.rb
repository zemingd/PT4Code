require "prime"

def gcd_of_two(a, b)
  small, large = [a, b].sort
  if small == 0
    return large
  else
    gcd_of_two(small, large % small)
  end
end

def isCoprime? (a, b)
  small, large = [a, b].sort
  if gcd_of_two(small, large) == 1
    true
  else
    false
  end
end

A, B = gets.split.map(&:to_i)
small, large = [A, B].sort

count = 0
count += 1 if small == 1

1.step(small/2) do |i|
  if i == 1 || (small % i == 0 && large % i == 0 && i.prime?)
    count += 1
  end
end

# あ、smallそれ自体も公約数になる可能性があるのか。
# 1はprimeにならないので、small==1のケースはここには含まれない。
count += 1 if small.prime? && large % small == 0

puts count
