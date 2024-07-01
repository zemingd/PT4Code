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

X = get_int

answer = []
# Bがマイナス
[*0..64].each do |a|
  [*-64..-1].each do |b|
    if a ** 5 - b ** 5 == X
      answer = [a, b]
    end
  end
end

# Bがプラス
[*0..120].each do |a|
  [*0..120].each do |b|
    if a ** 5 - b ** 5 == X
      answer = [a, b]
    end
  end
end

puts "#{answer[0]} #{answer[1]}"
