n = gets.to_i
task = n
sum = 0
waru = 100000000

while task > 0 do
        sum  = sum + task / waru
        task = task % waru
        waru = waru / 10
end

#sum = sum + task

if n % sum == 0
        puts "Yes"
else
        puts "No"
end