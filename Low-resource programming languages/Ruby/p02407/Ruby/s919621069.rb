a=gets.split.map(&:to_i)
a.delete_at(0)
min=a[0]
max=a[0]
sum=0
a.each{|i|
    if(i<min)
        min=i
    end
    if(i>max)
        max=i
    end
    sum+=i
}
printf("%d %d %d\n",min,max,sum)
