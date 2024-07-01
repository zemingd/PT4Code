n, k = gets.split.map &:to_i
a = gets.split.map &:to_i
b = [a[0]]
(n - 1).times do |i|
  b[i + 1] = b[i] * a[i + 1]
end

(n - k).times do |i|
  if b[k - 1 + i] < b[k + i] / a[k - 1 + i]
    puts "Yes"
  else
    puts "No"
  end
end
