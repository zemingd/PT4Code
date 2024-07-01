nn = gets.chomp.to_i

count = Array.new(nn + 1, 0)

(1..100).each do |x|
  (1..100).each do |y|
    (1..100).each do |z|
      m = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
      count[m] ||= 0
      count[m] += 1
    end
  end
end

(1..nn).each do |n|
  puts count[n]
end