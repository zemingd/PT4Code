n = gets.to_i

ans = [0] * (n+1)

1.upto(100) do |x|
  1.upto(100) do |y|
    s = x ** 2 + y ** 2 + x * y
    break if s > n
    1.upto(100) do |z|
      t = s + z ** 2 + y * z + z * x
      break if t > n
      ans[t] += 1
    end
  end
end

puts ans[1, n]