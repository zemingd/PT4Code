n, k = gets.strip.split(" ").map(&:to_i)

a = 0.0

1.upto(n) do |i|
  if i >= k
    a += 1.0 / n
  else
    if i == 1
      a += 1.0 / (n * 2**(Math.log2(k).ceil))
    else
      a += 1.0 / (n * 2**(Math.log(k, i).floor))
    end
  end
end

puts a
