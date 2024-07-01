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
Q = get_int
B, C = [], []
Q.times do |i|
  B[i], C[i] = get_ints
end

hash = Hash.new(0)
sum = 0

A.each do |a|
  hash[a] += 1
  sum += a
end

Q.times do |i|
  if hash[B[i]]
    bi = hash[B[i]]
    hash[B[i]] = 0
    sum -= B[i] * bi
    hash[C[i]] += bi
    sum += C[i] * bi
  end
  puts sum
end
