str = gets.chomp

W = str.split(' ')[0].to_i
H = str.split(' ')[1].to_i
x = str.split(' ')[2].to_i
y = str.split(' ')[3].to_i
r = str.split(' ')[4].to_i

if (x-r >= 0) && (x+r <= W) && (y-r >= 0) && (y+r <= H) then
	puts 'Yes'
else
	puts 'No'
end