# frozen_string_literal: true

n = gets.to_i
f = Hash.new { 0 }
(1..100).each do |x|
  (1..100).each do |y|
    (1..100).each do |z|
      f[x*x + y*y + z*z + x*y + y*z + z*x] += 1
    end
  end
end

(1..n).each do |i|
  puts f[i]
end
