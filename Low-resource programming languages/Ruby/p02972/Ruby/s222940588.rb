n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
if a.max == 0 then
  puts "0"
else
  b = []
  (1..n).reverse_each do |i|
    div = n / i
    if div == 1 then
      if a[i-1] == 1 then
        b.push(i)
      end
    elsif div > 1 then
      if a[i-1] == 1 then
        flg = true
        b.each do |bi|
          if (bi % i) == 0 then
            flg = false
            break
          end
        end
        if flg then
          b.push(i)
        end
      end
    end  
  end
  puts "#{b.length}"
  puts "#{b.join(' ')}"
end
