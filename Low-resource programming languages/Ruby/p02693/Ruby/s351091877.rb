k = gets.chomp.to_i
a,b = gets.chomp.split.map &:to_i

a.upto(b).each do |i|
#  p "i: #{i}, k: #{k}, i%k: #{i%k}"
  if i%k == 0
    print 'OK' 
    exit
  end
end
print 'NG'