n = gets.chomp.to_i

hash = {}
(1..100).each do |x|
  (1..100).each do |y|
    (1..100).each do |z|
      count = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
      hash[count] ||= 0
      hash[count] += 1
    end
  end
end

(1..n).each do |i|
  puts hash[i].to_i
end
