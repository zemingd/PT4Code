N = gets.to_i
array = gets.split.map(&:to_i)
false_count = 0

p array
results = []
array.each do |i|
  array.each do |j|
    next if i == j
    p [i,j]
    if i % j == 0
      results << [i,true]
    end
  end
end
p results

count = 0
p N - results.to_h.count
