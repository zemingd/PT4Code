x,y,z,k = gets.split(' ')
x = x.to_i
y = y.to_i
z = z.to_i
k = k.to_i
a = gets.split(' ').map{|i|i.to_i}[0..3001]
b = gets.split(' ').map{|i|i.to_i}[0..3001]
c = gets.split(' ').map{|i|i.to_i}[0..3001]

ab = Array.new
a.each do |a_i|
  b.each do |b_i|
    ab << a_i + b_i
  end
end
ab = ab.sort.reverse
abc = Array.new
ab.each_with_index do |ab_i, i|
  if i > 3001
    break
  end
  c.each_with_index do |c_i, i|
    abc << ab_i + c_i
  end
end

abc = abc.sort.reverse

k.times do |k_i|
  puts abc[k_i]
end

