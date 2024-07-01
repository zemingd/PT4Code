n,y = gets.chomp.split(" ").map(&:to_i)
temp = y/1000-n
if temp >= 0
  for i in 0..temp/9
    if (temp-i*9)%4 == 0 && n-i-(temp-i*9)/4 >= 0
      puts "#{i} #{(temp-i*9)/4} #{n-i-(temp-i*9)/4}"
      exit
    end
  end
end
puts "-1 -1 -1"