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
hash = {}
1.step(N) do |i|
  a = get_int
  hash[i] = {
    honest: [],
    unkind: [],
  }
  a.times do
    x, y = get_ints
    if y == 1
      hash[i][:honest].push(x)
    else
      hash[i][:unkind].push(x)
    end
  end
end

high = N
low = 0

# while high - low > 1
#   mid = low + (high - low) / 2
#   success = false
#   [*1..N].combination(mid).each do |c|
#     honest_set = Set.new
#     unkind_set = Set.new
#     contradiction = false
#
#     c.each do |data|
#       honest_set.merge(hash[data][:honest])
#       unkind_set.merge(hash[data][:unkind])
#     end
#
#     if (c.to_set & honest_set).length != honest_set.length
#       contradiction = true
#     else
#       contradiction = true if (c.to_set & unkind_set).length > 0
#     end
#
#     if !contradiction
#       # 矛盾がない
#       p c
#       success = true
#       break
#     end
#   end
#
#   if success
#     low = mid
#   else
#     high = mid
#   end
# end
#
# puts low

n = N
while n > 0
  mid = n
  success = false
  [*1..N].combination(mid).each do |c|
    honest_set = Set.new
    unkind_set = Set.new
    contradiction = false

    c.each do |data|
      honest_set.merge(hash[data][:honest])
      unkind_set.merge(hash[data][:unkind])
    end

    if (c.to_set & honest_set).length != honest_set.length
      contradiction = true
    else
      contradiction = true if (c.to_set & unkind_set).length > 0
    end

    if !contradiction
      # 矛盾がない
      p c
      success = true
      break
    end
  end

  break if success
  n -= 1
end

puts n
