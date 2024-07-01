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

N, M, K = get_ints
A = get_ints
B = get_ints

ax = []
sum = 0
A.each do |a|
  sum += a
  break if sum > K
  ax.push(sum)
end

bx = []
sum = 0
B.each do |b|
  sum += b
  break if sum > K
  bx.push(sum)
end

i = ax.length - 1
j = 0

ans = ax.length

while i >= 0
  while j < bx.length
    if ax[i] + bx[j] <= K
      ans = i + j + 2 if ans < i + j + 2
      j += 1
    else
      break
    end
  end
  i -= 1
end

puts ans
