n, total = gets.chomp.split(" ").map(&:to_i)
needs = n.times.map{gets.to_i}
remain = total - needs.inject(:+)
min = 1000000

needs.each do |n|
  if n < min
    min = n
  end
end

p remain / min + n