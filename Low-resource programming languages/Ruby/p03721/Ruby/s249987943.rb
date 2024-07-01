n, k = gets.split.map(&:to_i)
array = [].tap do |arr|
  n.times do
    a, b = gets.split.map(&:to_i)
    a.times { arr << b }
  end
end.sort
puts array[k+1]