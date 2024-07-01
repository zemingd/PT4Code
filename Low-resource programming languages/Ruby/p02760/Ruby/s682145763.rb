a = Array.new(3).map{Array.new(3)}
3.times do |i|
  a[i] = gets.split.map(&:to_i)
end
n = gets.to_i
b = []
n.times do
  b.push(gets.to_i)
end

ans = "No"

3.times do |i|
  if b.include?(a[0][i]) && b.include?(a[1][i]) && b.include?([2][i])
    ans = "Yes"
  elsif b.include?(a[i][0]) && b.include?(a[i][1]) && b.include?([i][2])
    ans = "Yes"
  end
end

if b.include?(a[0][0]) && b.include?(a[1][1]) && b.include?(a[2][2])
  ans = "Yes"
elsif b.include?(a[2][0]) && b.include?(a[1][1]) && b.include?(a[0][2])
  ans = "Yes"
end

puts ans