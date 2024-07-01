tenki = ['Sunny', 'Cloudy', 'Rainy', 'Sunny']
s = gets.chomp

cnt = 0

for i in tenki do
    cnt += 1
    if(s == i) 
        break
    end
end
puts tenki[cnt]