A,B = gets.chomp.split
ans = (A + B).to_i
num = 0

puts ans
while num**2 <= ans
  if num**2 == ans
    puts "Yes"
    exit
  end
  num+=1
end
puts "No"
