arr = Array.new
renge = (0..9).to_a
while n = gets
   arr << n.to_i
end
arr.each do |i|
   count = 0
   renge.repeated_permutation(4) do |a,b,c,d|
      if i == a + b + c + d
         count += 1
      end
   end
   puts count
end