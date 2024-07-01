
num = gets.split.map(&:to_f)
W = num[0]
H = num[1]
x = num[2]
y = num[3]

if x == W / 2 && y == H / 2
    print (W * H / 2).to_f
    puts " 1"
else
    print (W * H / 2).to_f
    puts " 0"
end
