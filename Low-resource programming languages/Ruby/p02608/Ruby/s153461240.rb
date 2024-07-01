n = gets.to_i

answers = Hash.new { |h, k| h[k] = 0 }

1.upto(100) do |x|
  1.upto(100) do |y|
    1.upto(100) do |z|
      answer = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
      answers[answer] += 1
    end
  end
end

(1..n).each do |num|
  puts answers[num]
end
