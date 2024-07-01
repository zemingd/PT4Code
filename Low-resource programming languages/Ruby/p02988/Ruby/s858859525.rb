n = gets.chomp.to_i
p = gets.chomp.split(/\s/).map(&:to_i)

count = 0

(0..n-3).each do |i|
  if p[i] < p[i + 1] && p[i + 1] < p[i + 2] ||
     p[i] > p[i + 1] && p[i + 1] > p[i + 2]
    count += 1
  end
end

puts count