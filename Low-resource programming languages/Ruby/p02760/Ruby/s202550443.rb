a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
n = gets.to_i
arr = []
n.times do
  arr << gets.to_i
end

arr.each do |v|
  (0..2).to_a.each do |i|
    a[i] = nil if a[i] == v
    b[i] = nil if b[i] == v
    c[i] = nil if c[i] == v
  end
end


tate1 = [a[0],b[0],c[0]].count{|n| n == nil}
tate2 = [a[1],b[1],c[1]].count{|n| n == nil}
tate3 = [a[2],b[2],c[3]].count{|n| n == nil}

yoko1 = [a[0],a[1],a[2]].count{|n| n == nil}
yoko2 = [b[0],b[1],b[2]].count{|n| n == nil}
yoko3 = [c[0],c[1],c[2]].count{|n| n == nil}

naname1 = [a[0],b[1],c[2]].count{|n| n == nil}
naname2 = [a[2],b[1],c[0]].count{|n| n == nil}

if tate1 ==3 || tate2 ==3 || tate3 ==3 || yoko1 ==3 || yoko2 ==3 || yoko3 ==3 || naname1==3 || naname2 ==3
  puts "Yes"
else
  puts "No"
end
