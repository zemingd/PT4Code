N = gets.to_i
array = gets.split.map(&:to_i)
false_count = 0

results = []
for i in 0..N-1
  for j in 0..N-1
    next if i == j
    p [i,j]
    if array[i] % array[j] == 0
      results << [i,true]
    end
  end
end
p N - results.to_h.count
