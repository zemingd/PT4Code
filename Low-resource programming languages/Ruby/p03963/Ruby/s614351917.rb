n, k = gets.split(" ").map(&:to_i)

res = k * (k-1)**(n-1)
puts(res)