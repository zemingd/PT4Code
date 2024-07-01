# frozen_string_literal: true

n, d = gets.split.map(&:to_i)
x = n.times.map { gets.split.map(&:to_i) }

def dis(x1, x2)
  sum = 0
  0.upto(x1.size - 1) do |i|
    sum += (x1[i] - x2[i]) ** 2
  end
  sum
end
count = 0
x.combination(2).each do |e|
  x1 = e[0]
  x2 = e[1]
  dist = dis(x1, x2)
  count += 1 if dist == Math.sqrt(dist).floor ** 2
end
puts count
