require 'set'

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
# C = gets.chomp.split.map(&:to_i)

# calculate divisors of a
def calc(a)
  r = []
  i = 2
  while (i * i <= a) 
    while ((a % i) == 0)
      r << i
      a /= i
    end
    i += 1
  end
  if a > 1
    r << a
  end
  r.sort
end

# p calc(12)
# p calc(15)
# p calc(18)

divisors = {}  # (num, id) => cnt. Use id to distinguish same nums.
A.each do |a|
  nums = {}
  calc(a).each do |d|
    nums[d] ||= 0
    nums[d] += 1  # incremtn
    key = [d, nums[d]]
    divisors[key] ||= 0
    divisors[key] += 1
  end
end

ans = 1
divisors.each do |key, cnt|
  d, id = key
  if ((cnt == N) || (cnt == N-1))
    ans *= d
  end
end

p ans