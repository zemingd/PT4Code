a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0
(0..a).each do |ia|
  (0..b).each do |ib|
    d = x - ia * 500 - ib * 100
    count+=1 if d % 50 == 0 && (0..c)===(d / 50)
  end
end

puts count