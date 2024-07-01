gets
a = gets.chomp.split.map(&:to_i)
n = 0

for i in 0..a.size-1
  for j in (a.size-1).downto(i+1)
    if a[j-1] > a[j]
    a[j-1],a[j] = a[j],a[j-1]
    n += 1
    end
  end
end

puts a*" "
puts n