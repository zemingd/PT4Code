N = gets.to_i
h = gets.split.map(&:to_i)
x=h[0]
num = 0
h.each do |a|
    num+=1 if x<=a
    x=a if x<a
end
puts num