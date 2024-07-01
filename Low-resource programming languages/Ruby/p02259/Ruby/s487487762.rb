n = gets.to_i
a = gets.chomp.split.map(&:to_i)
count = 0

1.upto(n-1) do |i|
  (n-1).downto(i) do |j|
    if a[j-1] > a[j]
      a[j-1], a[j] = a[j], a[j-1]
      count += 1
    end
  end
end

puts a.join(' '), count