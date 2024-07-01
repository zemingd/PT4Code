n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)

require 'pry'

def expectation(n)
  (n + 1)/2.0
end

max = 0
max_index = 0
tmp = 0

(0..n-k).each.with_index do |num, i|
  sum = 0
  if tmp.zero?
    (0...k).each do |k_num|
      sum += p[i + k_num]
    end
  else
    sum = tmp - p[i - 1] + p[i + k - 1]
  end
  tmp = sum
  if sum > max
    max = sum
    max_index = i
  end
end

i = max_index

answer = 0
(0...k).each do |k_num|
  answer += expectation(p[i + k_num])
end

puts answer
