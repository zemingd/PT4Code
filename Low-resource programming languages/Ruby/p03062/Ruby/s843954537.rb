N = gets.to_i
A = gets.split(' ').map(&:to_i)

num = A.select(&:negative?).size

if A.include?(0) || num.even?
  t = A.inject(0) do |sum, a|
    sum + a.abs
  end
  puts t
else
  abs_value = A[0].abs
  A.each_with_index do |a, _index|
    abs_value = a.abs if a.abs < abs_value
  end
  t = A.inject(0) do |sum, a|
    sum + a.abs
  end
  puts t - 2 * abs_value
end
