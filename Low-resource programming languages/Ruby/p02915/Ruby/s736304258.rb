def solve()
  n = gets.to_i
  arr = []
  n.times do |i|
    arr.push(i+1)
  end
  res = arr.repeated_permutation(3).to_a
  print(res.length)
end
solve()