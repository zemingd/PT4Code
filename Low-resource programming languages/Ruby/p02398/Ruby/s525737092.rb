a, b, c = gets.split.map(&:to_i)
count = 0

(a..b).each do |i|
  count += 1 if (c % i).zero?
end

p count

