n,m,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
a_i = 0
b_i = 0
c = 0

loop do
    a_flag = true
    b_flag = true
    t = nil
    a_flag = false if a_i > a.size-1
    b_flag = false if b_i > b.size-1
    
    if a_flag and b_flag
        if a[a_i] < b[b_i]
            t = a[a_i]
            a_i += 1
        else
            t = b[b_i]
            b_i += 1
        end
    elsif a_flag
        t = a[a_i]
        a_i += 1
    elsif b_flag
        t = b[b_i]
        b_i += 1
    else
        break
    end
    
    if k>=t
        k-=t
        c+=1
    else
        break
    end
end

p c