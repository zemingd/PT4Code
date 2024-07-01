aryMondai = gets.split.map(&:to_i);

W = aryMondai[0];
H = aryMondai[1];
x = aryMondai[2];
y = aryMondai[3];
r = aryMondai[4];

if (x - r) < 0 || (x + r) > W then
	puts "No";
elsif ( y - r ) < 0 || ( y + r ) > H then
	puts "No";
else
	puts "Yes";
end