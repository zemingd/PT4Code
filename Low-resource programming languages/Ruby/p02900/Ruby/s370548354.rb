require 'prime'

a, b = gets.split.map(&:to_i)
ans = 1
a.prime_division.each do |x, n|
  b.prime_division.each do |y, m|
    if x == y
      ans += 1
    end
  end
end
puts ans
