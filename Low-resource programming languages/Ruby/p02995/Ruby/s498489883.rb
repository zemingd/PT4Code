a,b,c,d=gets.chomp.split.map(&:to_i)
cnt=0
x=[]
a.upto(b) do |i|
  x << i
end
y=[]
z=[]
y = x.select {|item| item % c != 0 && item % d != 0 }
puts y.size