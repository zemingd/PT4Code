ab = gets.split(" ").map(&:to_i)
s = gets.chomp
hifnNum = 0

if s.length!=(ab[0]+ab[1]+1)
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


if s[(ab[0]+1)-1] != "-"
  puts "No"
  exit
end

puts "Yes" if (s.length - ab[0] -1) == ab[1] ;
