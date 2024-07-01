input = readlines()
n = input.shift.chomp.to_i

(1..n).each do |num|
  cnt = 0
  (1..num).each do |x|
    (1..num).each do |y|
      (1..num).each do |z|
        cnt += 1 if x*x + y*y + z*z + x*y + y*z + z*x == num
      end
    end
  end
  puts cnt
end
