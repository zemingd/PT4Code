io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
b=Array.new(n)
bb=Array.new(n)

n.times do |i|
  if i==0
    b[0]=a[0]
    bb[0]=a[0]
  elsif  i.even?
    bb[0]=a[i]
    (1..i).each do |j|
      bb[j]=b[i-j]
    end
  else
    b[0]=a[i]
    (1..i).each do |j|
      b[j]=bb[i-j]
    end
  end
end
if n.even?
  puts b.join(' ')
else
  puts bb.join(' ')
end
