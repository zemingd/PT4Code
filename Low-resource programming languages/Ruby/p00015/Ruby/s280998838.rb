N = gets.to_i
N.times do
  a = gets.to_i
  b = gets.to_i
  if a.to_s.size >= 80 || b.to_s.size >= 80
    puts "overflow"
  else
    sum = a+b
    if sum.to_s.size>=80
      puts "overflow"
    else
      puts sum
    end
  end
end