n=gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)
newarray = array.sort
lower = newarray[n / 2 - 1]
higher = newarray[n / 2 ]
k = 0
n.times do
  if array[k] <= lower
    puts higher
  else
    puts lower
  end
  k += 1
end
