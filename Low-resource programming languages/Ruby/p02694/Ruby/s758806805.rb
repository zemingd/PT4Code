x = gets.to_i
money=100.to_i
rate=1.01
3760.times do |i|
  money*=rate
  money=money.floor
  if money>=x
    puts i+1
    break
  end
end