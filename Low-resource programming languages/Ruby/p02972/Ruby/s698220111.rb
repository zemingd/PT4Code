n = gets.chomp.to_i
m = -1
if n == 0 then
  puts "#{m}"
else
  m = 0
  a = gets.chomp.split(" ").map(&:to_i)
  if a.max == 0 then
    puts "#{m}"
  else
    b = Hash.new
    (1..a.length).reverse_each do |i|
      div = a.length / i
      if div > 1 then
        sum = i.step(a.length, i).inject(0) {|r, j| r + a[j-1]}
        if (sum % 2) == 1 then
          b[i] = 1
        end
      elsif div == 1 then
        if a[i-1] == 1 then
          b[i] = a[i-1]
        end
      end  
    end
    puts "#{b.length}"
    puts "#{b.keys.join(' ')}"
  end
end
