require "prime"
N = gets.to_i
arr = N.prime_division.flat_map { |i,j| [i] * j }
if arr.empty?
  arr = [1]
end

def f(a, b)
  [a,b].max.to_s.length
end
min = 9999
(1..arr.size).each do |n|
  arr.combination(n) do |m|
    a = m.inject(:*)
    b = N / a
    c = f(a, b)
    if min > c
      min = c
    end
  end
end
p min
