s = gets.chomp

a=s[0..1].to_i
b=s[2..3].to_i

if([a,b].include?(0)) then
  if( (a==b)|| (a==0&&b>12) || (b==0&&a>12) ) then
    puts "NA"
  else 
    puts "YYMM"
  end
elsif (a>12||b>12) then 
  if(a>12&&b>12)then
    puts "NA"
  else 
    puts "YYMM"
  end
else
  puts "AMBIGUOUS"
end


