n = gets.to_i
a = gets.split(' ').map(&:to_i)
cnt = 0;

n.times do |i|
  (n-1).downto(i+1) do |j|
    if a[j] < a[j-1] then 
      a[j], a[j-1] = a[j-1], a[j]
      cnt += 1
    end
  end
end

puts a.join(' ')
puts cnt