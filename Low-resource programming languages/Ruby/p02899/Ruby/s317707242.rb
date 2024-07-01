n=gets.to_i
a=gets.split.map(&:to_i)

b=Array.new(n)
n.times do |i|
    b[i]=a.index(i+1)+1
end
puts b.join(" ")
