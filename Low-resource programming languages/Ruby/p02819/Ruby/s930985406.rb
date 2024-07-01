n = gets.chomp.to_i
while true do
  flag = true
  
  (2..Math.sqrt(n).to_i).each do |i|
    if n % i == 0 then
      flag = false
      break
    end
  end
  
  if flag then
    puts n
    break
  end
  
  n += 1
end