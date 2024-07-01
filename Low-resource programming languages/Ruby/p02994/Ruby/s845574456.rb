n, l = gets.split.map(&:to_i)

apples = []
(0..n-1).each do |nn|
  apples << l + nn
end

eat = 10 ** 20
a = 1000
apples.each_with_index do |ap, i|
  if ap.abs < eat.abs
    eat = ap
    a = i
  end
end
puts apples.inject(:+) - apples[a]