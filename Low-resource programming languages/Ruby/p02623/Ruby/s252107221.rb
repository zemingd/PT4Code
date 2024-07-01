N,M,k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
ai=0
bi=0
index=0
ans=0
x=0
loop do
    if ai == A.length && bi == B.length
        break
    elsif ai == A.length && bi != B.length
        x+=B[bi]
        break if x > k
        ans+=1
        bi+=1
    elsif ai != A.length && bi == B.length
        x+=A[ai]
        break if x > k
        ans+=1
        ai+=1
    else
        if x+A[ai]>k && x+B[bi]>k
            break
        elsif A[ai]==B[bi]
            if ai+1 == A.length
                x+=B[bi]
                break if x > k
                ans+=1
                bi+=1
            elsif bi+1 == B.length
                x+=A[ai]
                break if x > k
                ans+=1
                ai+=1
            elsif A[ai+1]<=B[bi+1]
                x+=A[ai]
                break if x > k
                ans+=1
                ai+=1
            else
                x+=B[bi]
                break if x > k
                ans+=1
                bi+=1
            end
        elsif A[ai]<B[bi]
            x+=A[ai]
            break if x > k
            ans+=1
            ai+=1
        else
            x+=B[bi]
            break if x > k
            ans+=1
            bi+=1
        end
    end
    index+=1
    break if index > 10
end
puts ans