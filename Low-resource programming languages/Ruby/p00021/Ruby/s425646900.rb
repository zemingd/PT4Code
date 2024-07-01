gets.to_i.times do
str=gets.chomp.split(' ').map(&:to_f)
   if ((str[3]-str[1])/(str[2]-str[0]))==((str[7]-str[5])/(str[6]-str[4]))
      puts('YES')
   else
      puts('NO')
   end
end