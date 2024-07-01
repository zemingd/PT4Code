require 'prime'

N = gets.to_i
A = gets.split.map(&:to_i)

def divisors(m)
  [1].product(*m.prime_division.map { |n, e| (0..e).map { |i| n**i } })
    .map { |list| list.inject(:*) }
    .sort
end

map = Hash.new(0)

N.times do |i|
  divisors(A[i]).each do |d|
    map[d] += 1
  end
end

kouho = []
map.each do |d, s|
  kouho << d.to_i if s == N - 1 || s == N
end

puts kouho.max