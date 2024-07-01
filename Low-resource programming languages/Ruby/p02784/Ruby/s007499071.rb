h, n = gets.strip.split.map(&:to_i)

a = gets.chomp.split
n.times do |i|
  a[i] = a[i].to_i
end

result = false
n.times do |i|
  h -= a[i]
  if h <= 0
    result = true
    break
  end
end

puts result ? "Yes" : "No"