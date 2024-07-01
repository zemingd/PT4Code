require 'set'

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
# C = gets.chomp.split.map(&:to_i)

# calculate divisors of a
def calc(a)
  r = Set.new
  i = 1
  while (i * i <= a) 
    if (a % i) == 0
      r << i
      r << a / i
    end
    i += 1
  end
  r
end

# p calc(12)
# p calc(15)
# p calc(18)

divisors = {}
A.each do |a|
  calc(a).each do |d|
    divisors[d] ||= 0
    divisors[d] += 1
  end
end

ans = 1
divisors.each do |d, cnt|
  if ((cnt == N) || (cnt == N-1)) && d > ans
    ans = d
  end
end

p ans