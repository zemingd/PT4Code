a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

n_way = 0
0.upto(a) do |n_500|
  0.upto(b) do |n_100|
    0.upto(c) do |n_50|
      n_way += 1 if 500*n_500 + 100*n_100 + 50*n_50 == x
    end
  end
end
puts n_way
