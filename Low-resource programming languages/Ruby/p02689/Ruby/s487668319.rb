require 'set'

N,M = gets.split.map(&:to_i)
H = [0] + gets.split.map(&:to_i)
s = Set.new(1..N)
M.times do
  a,b = gets.split.map(&:to_i)
  s.delete(a) if H[a]<=H[b]
  s.delete(b) if H[b]<=H[a]
end
puts s.size