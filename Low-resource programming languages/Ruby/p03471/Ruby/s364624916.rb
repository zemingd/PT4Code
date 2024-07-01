n, sum = gets.split.map(&:to_i)
x_answer = -1
y_answer = -1
z_answer = -1

(0..n).each do |x|
  (0..n-x).each do |y|
    z = n - x - y
    next unless x + y + z == n
    if sum == 10000*x + 5000*y + 1000*z
      x_answer = x
      y_answer = y
      z_answer = z
    end
  end
end

print "#{x_answer} #{y_answer} #{z_answer}"
