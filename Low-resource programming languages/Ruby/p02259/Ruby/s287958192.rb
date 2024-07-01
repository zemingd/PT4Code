n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
cnt = 0

n.times do |i|
  (n - 1).downto(i + 1) do |j|
    if a[j - 1] > a[j]
      tmp = a[j - 1]
      a[j - 1] = a[j]
      a[j] = tmp

      cnt += 1
    end
  end
end

puts a.map(&:to_s).join(' ')
puts cnt
