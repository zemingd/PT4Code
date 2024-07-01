def digits(n, k)
  n.to_s(k).length
end
n, k = gets.split.map(&:to_i)
puts digits(n, k)