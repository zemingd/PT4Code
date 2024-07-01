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

sixes = 1.step(7).map { |x| 6 ** x }
nines = 1.step(6).map { |x| 9 ** x }

array = [1, *sixes, *nines].sort

ax = [N]
count = 0
set = Set.new
loop do
  ax = ax.reduce([]) do |prev, cur|
    index = array.bsearch_index { |x| x > cur } - 1
    prev + array[0..index].map do |x|
      result = cur - x
      if set.include?(result)
        nil
      else
        set.add(result)
        result
      end
    end.compact
  end
  count += 1
  break if ax.find { |a| a == 0 }
end

puts count
