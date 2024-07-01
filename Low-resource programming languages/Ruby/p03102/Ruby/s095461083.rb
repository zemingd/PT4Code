n,m,c=gets.chomp.split(' ').map(&:to_i)
b=gets.chomp.split(' ').map(&:to_i)
a=[]
n.times { a << gets.chomp.split(' ').map(&:to_i) }
count=0
a.each do |aa|
  count+=1 if aa.zip(b).map{|aa|aa[0]*aa[1]}.inject(:+)+c > 0
end
puts count