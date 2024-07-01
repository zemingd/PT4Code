n, a, b, c = gets.split.map(&:to_i)
l = n.times.map { gets.to_i }
ans = 100000

[0, 1, 2, 3].repeated_permutation(n) do |array|
  a_ = a
  b_ = b
  c_ = c
  next if array.count(0) == 0 || array.count(1) == 0 || array.count(2) == 0
  array.each_with_index do |item, i|
    case item
    when 0
      a_ -= l[i]
    when 1
      b_ -= l[i]
    when 2
      c_ -= l[i]
    end
  end
  mp = 10 * (n - array.count(3) - 3)
  mp += a_.abs + b_.abs + c_.abs
  ans = mp if ans > mp
end

puts ans