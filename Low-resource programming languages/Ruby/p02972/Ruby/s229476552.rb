n = gets.chomp.to_i
a = []
n.times{ a << gets.chomp.to_i}
b = [a[0]]

a[1..-1].each do |x|
  i = b.bsearch_index{|y| y >= x}
  if i.nil?
    b[-1] == x
  elsif i == 0
    b.unshift(x)
  else
    b[i-1] = v
  end
end

puts b.size