s=gets.chomp;
yy=s[0..1].to_i(10);mm=s[2..3].to_i(10);
if 1 <= mm && mm <= 12 && !(1 <= yy && yy <=12) then
puts :YYMM
elsif 1 <= yy && yy <= 12 && !(1 <= mm && mm <=12) then
puts :MMYY
elsif 1 <= yy && yy <= 12 && 1 <= mm && mm <= 12 then
puts :AMBIGUOUS
else
puts :NA
end