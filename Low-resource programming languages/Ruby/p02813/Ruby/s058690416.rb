n = gets.to_i;
p_array = gets.split.map{|n| n.to_i };
q_array = gets.split.map{|n| n.to_i };

junretu_before = []
a = 0
b = 0
ans = 0
count = 0

(1..n).each do |x|
   junretu_before.push(x.to_i)
end

junretu_before.permutation do |x|
   count+=1
   if p_array == x
      a = count
   end

   if q_array == x
      b = count
   end

end

ans = (a -b).abs

puts ans
