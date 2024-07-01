
while n = gets.to_i do 
sum = 0
(0..9).each do |a|
  (0..9).each do |b|
    (0..9).each do |c|
      (0..9).each do |d|
        if  a + b + c + d == n then
        sum +=1
        end
      end
    end
  end
end
puts sum  end 
