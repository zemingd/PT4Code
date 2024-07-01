n=gets.chomp.to_i
m=gets.chomp.split.map(&:to_i)
sum=0
m.each do |i|
sum += i
end
total=0
m.each do |i|
total+=i*(sum-i)
end
puts total/2