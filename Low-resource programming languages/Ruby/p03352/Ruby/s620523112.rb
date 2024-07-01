x = gets.to_i
x.times do |i|
  sqrt = Math.sqrt(x - i)
  if sqrt % 1 == 0 then
    puts sqrt.to_i
    break
  end
end