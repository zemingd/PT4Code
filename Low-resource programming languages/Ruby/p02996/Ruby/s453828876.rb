n = gets.chomp.to_i
array = Array.new
n.times do
  array << gets.chomp.split(" ").map(&:to_i)
end

array_a = array.sort do |a, b|
  (a[1] <=> b[1]).nonzero? || (a[0] <=> b[0])
end

result = "Yes"
sum = 0
array_a.each do |a|
  sum += a[0]
  if sum > a[1]
    result = "No"
    break
  end
end

puts result