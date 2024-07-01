a = gets.to_i
b = gets.to_i
s = gets.chomp
hifnNum = 0

if s.length!=a+b+1
  puts "No"
  exit
end

(s.length).times do |i|
  if s[i] =="-"
    hifnNum = hifnNum+1
  end
end

if hifnNum !=1
  puts "No"
  exit
end


if s[(a+1)-1] != "-"
  puts "No"
  exit
end

puts "Yes" if (s.length - a -1) == b ;
