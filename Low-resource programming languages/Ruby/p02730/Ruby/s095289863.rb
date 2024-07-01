def kaibun?(str)
  n=str.size
  if n % 2 == 0
    return str[0..(n/2-1)] == str[(n/2)..(n-1)].reverse
  else
    return str[0..(n/2-1)] == str[(n/2+1)..(n-1)].reverse
  end
end
string = gets.chomp
l=string.size
strh = string[0..(l/2-1)]
strt = string[(l/2+1)..(l-1)]
if kaibun?(strh) && kaibun?(strt)
  puts "Yes"
else
  puts "No"
end
