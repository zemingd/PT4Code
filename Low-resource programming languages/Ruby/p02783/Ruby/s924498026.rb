h,a = gets.chomp.split.map(&:to_i)

cnt = 0

while h>0
    cnt+=1
    h-=a
end
p cnt