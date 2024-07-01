a = gets.chomp.split('')

b = ['+', '-']
b = b.product(b).product(b).map(&:flatten)

b.each do |c|
  s = ''
  3.times{ |i| s += a[i] + c[i] }
  s += a[3]
  
  if eval(s) == 7 then
    puts (s + '=7')
    break
  end
end