inp = [0,0,0]
inp[0], inp[1], inp[2] = gets.split(' ').map(&:to_i)
a,b,c=inp[0], inp[1], inp[2]

inp.sort!

if inp[1] == c
	puts "Yes"
else
	puts "No"
end