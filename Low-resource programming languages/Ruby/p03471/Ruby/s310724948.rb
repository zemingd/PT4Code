n, y = gets.split(" ").map(&:to_i)
l = 10000
m = 5000
s = 1000
result = nil

(0..n).each do |i|
  (0..(n - i)).each do |j|
    if s * (n - i - j) == y - l * i + m * j
      result = [i, j, n - i - j]
    end
  end
end

result = [-1, -1, -1] if !result

print result[0]
print " "
print result[1]
print " "
print result[2]