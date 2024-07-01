require 'set'

N = gets.to_i
Pn = gets.split.map(&:to_i)
set = Set.new

(N - 1).times do |n|
  prev = Pn[n]
  _next = Pn[n + 1]

  next if prev <= _next

  Pn[n], Pn[n + 1] = _next, prev
  set << prev
end

puts set.size <= 1 ? 'YES' : 'NO'
