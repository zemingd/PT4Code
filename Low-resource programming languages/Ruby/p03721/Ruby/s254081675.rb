array = Array.new(100000 + 1, 0)

n, k = gets.split.map(&:to_i)
n.times do
  a, b = gets.split.map(&:to_i)
  array[a] += b
end

array.each_with_index do |x, i|
  k -= x
  if k <= 0
    puts i
    exit
  end
end

