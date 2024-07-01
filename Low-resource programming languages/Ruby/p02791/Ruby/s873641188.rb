N = gets.to_i
A = gets.split.map(&:to_i)
count = 0
A.inject(2 * N) do |smin, a|
  count += 1 if a <= smin
  a < smin ? a : smin
end
puts count