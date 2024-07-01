n, k = gets.split("\s"),map(&:to_i)
s = gets.strip

n.times do |i|
  if i == k - 1
    print s[i].tr('A-Z', 'a-z')
  else
  	print s[i]
  end
end