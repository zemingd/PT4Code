N = gets.to_i
sqn = Math.sqrt(N)

counter = Hash.new(0)

1.upto(sqn) do |x|
  1.upto(sqn) do |y|
    1.upto(sqn) do |z|
      n = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x

      counter[n] += 1
    end
  end
end

puts (1..N).map { |n| counter[n] }
