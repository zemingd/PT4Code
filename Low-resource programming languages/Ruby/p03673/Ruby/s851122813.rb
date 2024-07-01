io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
b=[]

n.times do |i|
  if i>0
    bb=b.clone
    (1..i).each do |j|
      b[j]=bb[-j]
    end
  end
  b[0]=a[i]
end
puts b.join(' ')
