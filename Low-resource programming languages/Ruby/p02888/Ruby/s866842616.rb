n = gets.to_i
l = gets.chomp.split(' ').map(&:to_i)

def mergesort(a,b)
    ary = []
    i,j = [0,0]
    while true
        if (i<a.size)&&((j>=b.size)||(a[i]<=b[j]))
            ary << a[i]
            i+=1
        elsif(j<b.size)&&((i>=a.size)||b[j]<a[i])
            ary<<b[j]
            j+=1
        else
            break
        end
    end
    return ary
end

def merge(ary)
    if ary.size == 1
        return ary
    end
    ary1 = merge(ary[0...(ary.size)/2])
    ary2 = merge(ary[(ary.size)/2..-1])
    return mergesort(ary1,ary2)
end
l = merge(l)

ans = 0
(l.size-1).times do |i|
    (i+1).upto(l.size-1) do |j|
        temp_ary = l[0...i].dup
        target_num = l[j]-l[i]
        head = temp_ary.size
        tail = 0
        while true
            if temp_ary.size == 0
                break
            end
            mid = (head+tail)/2
            if head<=tail
                ans += temp_ary.size-tail
                break
            elsif temp_ary[mid]>target_num
                head = mid
            elsif temp_ary[mid]<=target_num
                tail = mid+1
            end
        end
    end
end
puts ans