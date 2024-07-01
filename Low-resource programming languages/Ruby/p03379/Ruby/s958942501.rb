N = gets.to_i
x = []

x[0] = gets.split.map(&:to_i)
x[1] = (0..N-1).map.to_a
y = x.transpose.sort_by{|a,b| a}

0.upto(N-1) do |i|
  new_index = y.transpose[1].index(i)

  if new_index < N/2
    puts y[N/2][0]
  else
    puts y[N/2-1][0]
  end
end
