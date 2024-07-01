n = gets.to_i
a = Array.new(n) { gets.to_i }
colors = [a[0]]
 
a[1..-1].each do |x|
  i = colors.bsearch_index{|y| y >= x}
  if i.nil?
    colors[-1] = x
  elsif i == 0
    colors.unshift(x)
  else
    colors[i-1] = x
  end
end
 
puts colors.length