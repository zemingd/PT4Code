  arr = gets.split.map(&:to_i).sort.reverse
  k = gets.to_i
  k.times do
    arr[0] *= 2
  end
  print arr.reduce(&:+)