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

hash = Hash.new(0)

A.each do |a|
  hash[a] += 1
end
sum = 0
hash.each do |i, num|
  sum += (num * (num-1)) / 2
end

A.each do |a|
  if hash[a] == 1
    puts sum
  else
    cur = (hash[a] * (hash[a] - 1))/2
    xxx = ((hash[a] - 1) * (hash[a] - 2)) / 2
    puts sum - cur + xxx
  end
end
