a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
ctn = 0

(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      ctn +=1 if d == i*500 + j*100 + k*50
    end
  end
end
  
puts ctn