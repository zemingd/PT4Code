# frozen_string_literal: true

# N = gets.to_i
N = 20

nums = (1..N).filter { |n| 4 * n - 8 >= 0 }
(1..N).each do |n|
  count = 0
  if 4 * n - 8 < 0
    puts 0
    next
  end
  max = (1.22474 * Math.sqrt(n)).floor
  (1..max).each do |x|
    (1..max).each do |y|
      z = begin
            0.5 * (Math.sqrt(4 * n - 3 * x * x - 2 * x * y - 3 * y * y) - x - y)
          rescue StandardError
            -1
          end
      count += 1 if z > 0 && Integer(z) == z
    end
  end
  puts count
end
