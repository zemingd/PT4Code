m, n = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)
count = 0

a.each do |i|
  m - i
  count += 1

  if m <= 0
    break
  end
end

puts count > n ? "No" : "Yes"