N = gets.to_i
x =[]
5.times {
  x << gets.to_i
}
ind = 0
x.each_with_index { |v,i|
  if x[ind] > v
    ind = i
  end
}

p N / x[ind] + 5


