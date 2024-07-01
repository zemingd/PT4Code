num = gets.to_i
keta = Math.log10(num).to_i+1
sum = 0
num2 = num
keta.times do |i|
    sum += num % 10
    num /= 10
end
puts num2 % sum == 0 ? "Yes" : "No"