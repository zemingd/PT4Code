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

N = get_int
A = get_ints

MAX = 10 ** 6

a = A.sort

non_unique = Set.new

a.each_cons(2) do |x, y|
  if x == y
    non_unique.add(x)
  end
end

set = Set.new

ans = - non_unique.length

a.each do |x|
  unless set.include?(x)
    ans += 1
    test = x
    while test <= MAX
      set.add(test)
      test += x
    end
  end
end

puts ans
