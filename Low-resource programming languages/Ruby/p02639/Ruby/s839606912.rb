x = gets.split.map(&:to_i)

x.length.times {|i|
  if x[i] == 0
    puts i+1
  end
  }