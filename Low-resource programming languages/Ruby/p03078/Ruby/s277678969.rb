x,y,z,k = gets.split(' ')
x = x.to_i
y = y.to_i
z = z.to_i
k = k.to_i
a = gets.split(' ').map{|i|i.to_i}[0..3001]
b = gets.split(' ').map{|i|i.to_i}[0..3001]
c = gets.split(' ').map{|i|i.to_i}[0..3001]

abc = Array.new
a.each_with_index do |a_item, a_index|
  if a_index > k / 2
    break
  end
  b.each_with_index do |b_item, b_index|
    if b_index > k / 2
      break
    end
    c.each_with_index do |c_item, c_index|
      if c_index > k / 2
        break
      end
      abc << a_item + b_item + c_item
    end
  end
end

abc = abc.sort.reverse

k.times do |k_i|
  puts abc[k_i]
end

