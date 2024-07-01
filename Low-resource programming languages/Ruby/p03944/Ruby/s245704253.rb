w,h,n=gets.chomp.split.map(&:to_i)
I=[]
ld=[0,0]
ru=[w,h]
n.times do
    I.push(gets.chomp.split.map(&:to_i))
end

I.each do |line|
    a=line[2]
    if a==1
        ld[0]=line[0] if ld[0]<line[0]
    elsif a==2
        ru[0]=line[0] if line[0]<ru[0]
    elsif a==3
        ld[1]=line[1] if ld[1]<line[1]
    elsif a==4
        ru[1]=line[1] if line[1]<ru[1]
    end
end
if ru[0]-ld[0]<=0 || ru[1]-ld[1]<=0
    puts 0
    exit
end
p (ru[0]-ld[0])*(ru[1]-ld[1])
