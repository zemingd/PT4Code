N = gets.to_i
A = gets.split.map(&:to_i)

nums = A.map(&:abs)
min_v = nums.min

0.upto(N - 2) do |i|
  if A[i] < 0
    A[i] = -A[i]
    A[i + 1] = -A[i + 1]
  end
end

last = A[-2..-1]

if last.include?(0)
  puts nums.inject(:+)
elsif last.inject(:*) < 0
  puts nums.inject(:+) - 2 * min_v
else
  puts nums.inject(:+)
end
