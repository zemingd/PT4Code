n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
if a.max == 0 then
  puts "#{m}"
else
  b = []
  (1..a.length).reverse_each do |i|
    div = a.length / i
    if div > 1 then
      # sum = i.step(a.length, i).inject(0) {|r, j| r + a[j-1]}
      sum = 0
      i.step(a.length, i).each do |j|
        sum += a[j-1]
      end
      if (sum % 2) == 1 then
        b.push(i)
      end
    elsif div == 1 then
      if a[i-1] == 1 then
        b.push(i)
      end
    end  
  end
  puts "#{b.length}"
  puts "#{b.keys.join(' ')}"
end
