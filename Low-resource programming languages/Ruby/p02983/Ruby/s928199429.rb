l, r = gets.chomp.split(' ').map(&:to_i)
i = l
result = []
l.upto(r-1) do |i|
  (l+1).upto(r) do |j|
    result << mod = (i * j) % 2019
  end
end  
puts result.min