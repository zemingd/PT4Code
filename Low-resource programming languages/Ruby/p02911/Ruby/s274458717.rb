n, k, q = gets.split.map(&:to_i)
a = []
1.upto(q) do |_|
  a << gets.to_i
end
b = a.group_by{|i| i}
1.upto(n) do |i|
  if k - (q - b[i].to_a.length) > 0
    print "Yes\n"
  else
    print "No\n"
  end
end