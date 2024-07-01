count = 0
sum = 0
hoge = []
while count < 2 do
 n = gets.to_i
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
  count += 1
  hoge.push(sum)
end

puts hoge 
