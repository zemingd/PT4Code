N = gets.to_i
A = gets.split.map(&:to_i)

last_index = 0
n_ = (1 .. N + 1).find do |n|
  found = (last_index ... N).find{|i| A[i] == n }
  last_index = found if found
  !found
end
puts n_ == 1 ? -1 : N - (n_ - 1)
