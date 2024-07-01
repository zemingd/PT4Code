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

N, M = get_ints
H = get_ints
A = []
B = []

M.times do |i|
  A[i], B[i] = get_ints_minus_one
end

goods = Array.new(N) { true }

M.times do |i|
  if H[A[i]] > H[B[i]]
    goods[B[i]] = false
  elsif H[A[i]] < H[B[i]]
    goods[A[i]] = false
  else
    goods[A[i]] = false
    goods[B[i]] = false
  end
end

puts goods.count { |x| x }
