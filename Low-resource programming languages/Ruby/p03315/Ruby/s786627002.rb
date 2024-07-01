s = gets.chomp

m=0
s.each do |I|
  I="+"? m+=1:m-=1
end

puts m