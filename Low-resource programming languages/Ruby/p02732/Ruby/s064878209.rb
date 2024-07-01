n = gets.to_i
array = gets.split(" ").map(&:to_i)

for i in 0..n-1
  ctn = 0
  array_first = array[0]
  array.delete_at(0)
  for j in 0..array.combination(2).to_a.length - 1
    if array.combination(2).to_a[j][0] == array.combination(2).to_a[j][1]
      ctn += 1
    end
  end
  puts ctn
  array.push(array_first)
end

