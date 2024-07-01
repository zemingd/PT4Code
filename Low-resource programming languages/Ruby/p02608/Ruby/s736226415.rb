n = gets.to_i
hash = Hash.new(0)
1.upto(101) do |x|
  1.upto(101) do |y|
    1.upto(101) do |z|
      hash[x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x] += 1
    end
  end
end
1.upto(n) do |i|
  puts hash[i]
end
