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

N = get_int
A = get_ints

threshold = 10**18

if A.include?(0)
  puts 0
else
  result = 1

  N.times do |i|
    result *= A[i]
    if result > threshold
      result = -1
      break
    end
  end

  puts result
end
