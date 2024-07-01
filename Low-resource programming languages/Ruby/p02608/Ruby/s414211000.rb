# frozen_string_literal: true

N = gets.to_i

(1..N).each do |n|
  count = 0
  max = (1.22474 * Math.sqrt(n)).floor
  (1..max).each do |x|
    (1..max).each do |y|
      z = begin
            0.5 * (Math.sqrt(4 * n - 3 * x * x - 2 * x * y - 3 * y * y) - x - y)
          rescue StandardError
            -1
          end
      if z > 0 && Integer(z) == z
        count += 1
        pp [n, x, y, z]
      end
    end
  end
  puts count
end
