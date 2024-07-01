N = gets.to_i
arr = gets.split.map(&:to_i)
arrsrt = arr.sort
center = N / 2
a = arrsrt[center]
b = arrsrt[center - 1]
N.times do |i|
  if arrsrt.bsearch_index{|x|x >= arr[i]} < center
    puts a
  else
    puts b
  end
end