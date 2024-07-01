n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

monsters = (0..n).inject(0) do |counter, i|
  if a[i] <= b[i]
    b[i+1] ||= 0
    b[i+1] += b[i] - a[i]
    counter += a[i]
  else
    counter += b[i]
  end
end

puts monsters