N = gets.to_i

min = 20

(1..(Math.sqrt(N).floor)).each do |i|
    next unless N % i == 0
    digits = (N / i).to_s.length
    min = digits if min > digits
end

p min