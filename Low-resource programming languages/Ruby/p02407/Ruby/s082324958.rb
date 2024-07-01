l = gets.to_i;
a = gets.split.map(&:to_i).reverse
ans = ""
for i in 0...l do
  ans << "#{a[i]} "
end
puts ans.strip