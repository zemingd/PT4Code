def kaibun(str)
  len = str.length
  iskaibun = true
  (len/2).times do |i|
    iskaibun = false if str[i] != str[len-1-i]
  end
  iskaibun
end

s = gets.chomp
len = s.length
if kaibun(s) && kaibun(s[0..((len-1)/2)-1]) && kaibun(s[((len+3)/2)-1..len-1])
  puts "Yes"
else
  puts "No"
end