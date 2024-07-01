num = gets.to_i
arg = gets.to_s

array = arg.split(/,/)

for i in 1..num do
  count = 0
  test = array.delete_at(i)
  result = test.combination(2).to_a
  for j in result do
    if j[0] == j[1] then
      count++
    end
  end
  p count
end
