n, x = gets.split(' ').map{|i| i.to_i}
a = gets.split(' ').map{|i| i.to_i}.sort

count = 0
if a.inject(&:+) == x
  count = n
elsif a.inject(&:+) < x
  count = n-1
else
  a.each do |k|
    x -= k
    if x >= 0
      count += 1
    else
      break
    end
  end
end

puts count