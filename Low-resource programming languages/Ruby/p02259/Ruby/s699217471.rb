def BubbleSort(a,n)
    cnt=0
    (0..n-1).each do |i|
        if i+1 > n-1 then next end
        (i+1..n-1).reverse_each do |j|
            if a[j] < a[j-1] then
               a[j],a[j-1]=a[j-1],a[j]
               cnt+=1
            end
        end
    end
    return cnt
end
n=gets.to_i
indata=gets.split(' ').map(&:to_i)
n=BubbleSort(indata,n)
printf("%s\n",indata.join(' ').to_s)
p n