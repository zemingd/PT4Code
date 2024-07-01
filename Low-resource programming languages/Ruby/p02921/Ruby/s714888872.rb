forecast = gets.chomp.split("")
fact = gets.chomp.split("")

count = 0
forecast.each_with_index do |v, index|
    count +=1 if v.eql?(fact[index])
end

p count