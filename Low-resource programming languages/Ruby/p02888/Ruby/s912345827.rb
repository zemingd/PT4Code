# frozen_string_literal: true

n = gets.to_i
l = gets.split.map(&:to_i).sort
count = 0
0.upto(n - 3) do |i|
  a = l[i]
  (i + 1).upto(n - 2) do |j|
    b = l[j]
    (j + 1).upto(n - 1) do |k|
      c = l[k]
      break if a + b <= c

      count += 1
    end
  end
end

puts count
