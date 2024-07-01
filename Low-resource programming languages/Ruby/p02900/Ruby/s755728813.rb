require 'set'

class Hash
  def push(key, value)
    self[key] = [] if self[key] == nil
    self[key].push(value)
  end
end

class Array
  def lower_bound(value)
    left = -1;
    right = self.length;
    while left + 1 < right
      mid = left + (right - left) / 2;
      if self[mid] >= value
        right = mid
      else
        left = mid
      end
    end
    right
  end

  def unique
    res = [self.first]
    each_cons(2) do |a, b|
      if a != b
        res.push(b)
      end
    end
    res
  end
end

def get_ints
  gets.split.map(&:to_i)
end

def get_ints_minus_one
  get_ints.map { |x| x - 1 }
end

def get_int
  gets.chomp.to_i
end

require 'prime'

A, B = get_ints

def divisor(n)
  result = SortedSet.new
  result.add(1); result.add(n)
  i = 1
  num = Math.sqrt(n)
  while i <= num do
    remainder = n % i
    if remainder == 0
      result.add(i)
      result.add(n/i)
    end
    i += 1
  end
  result.to_a
end

a_divisors = divisor(A)
b_divisors = divisor(B)

ab_divisors = (a_divisors & b_divisors).sort!

primes = Prime.each(ab_divisors.last).to_a

puts (ab_divisors & primes).length + 1

