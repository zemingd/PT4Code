a = []
a = gets.chomp.split("").map(&:to_i)
n = gets.chomp.to_i
#p a[0].class
#p n
t = 0
cnt = 0
for i in 0..a.length-1
    if a[i] != 1 
        t = i
        cnt = a[i]
        break
    end
end
if t+1 >= n
    puts 1
    #exit
else
    puts cnt
end