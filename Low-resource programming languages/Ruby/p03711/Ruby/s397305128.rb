def ABC(n)
    if n==1 or n==3 or n==5 or n==7 or n==8 or n==10 or n==12
        return("A")
    elsif n==4 or n==6 or n==9 or n==11
        return("B")
    elsif n==2
        return("C")
    end
end


x,y=gets().chomp().split().map(&:to_i)
if ABC(x)==ABC(y)
    puts("Yes")
else
    puts("No")
end