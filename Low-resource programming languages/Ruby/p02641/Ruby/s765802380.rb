X, N = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)

array = [-100..100].map(&:to_a).flatten

p.each do |i|
  array.delete i
end

compare = 10000
answer = nil

array.each do |j|
  result = X - j
  if compare > result.abs
    answer = j
    compare = result.abs
  end
end
puts answer
