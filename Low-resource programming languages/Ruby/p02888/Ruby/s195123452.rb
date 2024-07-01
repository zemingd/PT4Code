# frozen_string_literal: true

n = gets.to_i
l = gets.split.map(&:to_i).sort
count = 0
0.upto(n - 3) do |i|
  (i + 1).upto(n - 2) do |j|
    a = l[i]
    b = l[j]
    c_upper = l.bsearch_index { |e| a + b <= e }
    next if c_upper == n - 1

    c_lower = j + 1

    c_upper = n if c_upper.nil?
    c_upper -= 1
    next if c_upper < c_lower

    count += [c_upper - c_lower, 0].max + 1
  end
end

puts count
