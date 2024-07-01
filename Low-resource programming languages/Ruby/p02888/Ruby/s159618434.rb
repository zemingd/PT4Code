n = gets.to_i
l = gets.chomp.split(' ').map(&:to_i).sort
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