N = gets.to_i
A = gets.split.map(&:to_i)

m = 0
sum = 0
min_abs = nil
N.times do |i|
  sum += A[i].abs
  if A[i] < 0
    if i != 0 && A[i - 1] == 0 || N - 1 > i && A[i + 1] == 0
      next
    end
    m += 1
  end
  if min_abs.nil? || min_abs > A[i].abs
    min_abs = A[i].abs
  end
end

if m.even?
  puts sum
else
  puts sum - min_abs * 2
end