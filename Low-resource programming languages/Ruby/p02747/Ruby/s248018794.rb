a = gets.chomp.split("")
flag = 0
a.length.times do |k|
  if (k - 1) % 2 == 0
    if a[k - 1] != "h"
      flag = 1
    end
  else
    if a[k - 1] != "i"
      flag = 1
    end
  end
end

if a.length == 1
  flag = 1
end

if flag == 0
  puts "Yes"
else
  puts "No"
end
