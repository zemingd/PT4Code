require 'set'

class Hash
  def push(key, value)
    self[key] = [] if self[key] == nil
    self[key].push(value)
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

X = get_ints

result = 0

X.each.with_index do |x, i|
  n = i+1
  if n != x
    result = n
    break
  end
end

puts result
