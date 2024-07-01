n = gets.to_i
a = gets.split(" ").map(&:to_i)

b = []

n.downto(1) do |i|
  if i > n/2
    b[i-1] = a[i-1]
    next
  end

  cnt = n/i

#  puts "n : #{n} i : #{i} cnt : #{cnt}"
#  p b

  sum = 0
  (cnt-1).times do |j|
    sum += b[i*(j+1)]
  end

#  puts "sum : #{sum}"
#  p sum % 2

  if sum % 2 != a[i-1]
    b[i-1] = 1
  else
    b[i-1] = 0
  end

end

sum = b.inject(:+)
puts sum
if sum != 0
  indi = []
  b.each_with_index do |bi,idx|
    if bi == 1
      indi << idx+1
    end
  end
  puts indi.join(" ")
end
