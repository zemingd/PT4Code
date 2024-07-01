X, N = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)
0.upto(200) do |i|
  min = X - i
  max = X + i
  unless P.include? min
    puts min 
    exit
  end
  unless P.include? max
    puts max
    exit
  end
end
