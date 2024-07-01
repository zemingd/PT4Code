x = gets.split.map(&:to_i)

#p x
6.times { |i|
  if x[i] != i+1
    puts i+1
    exit
  end
}
