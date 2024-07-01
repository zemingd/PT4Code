# x**2 + x + 4 = n

n = gets.strip.to_i
m = Array.new(n,0)
nn = Integer.sqrt(n)
1.upto(nn) do |x|
  1.upto(nn) do |y|
    1.upto(nn) do |z|
      t = x * x + y * y + z * z + x * y + y * z + z * x
      break if t > n
      m[t-1] += 1
    end
  end
end
n.times do |i|
  p m[i]
end
