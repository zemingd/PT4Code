x=gets.to_i
a=0
while a**5<=x**2
    c=a**5-x
    if c<0
        t=(-c)**0.2
    else
        t=c**0.2
    end
    t=t.to_i
    t=-t if c<0
    (t-10..t+10).each{|b|
        if a**5-b**5==x
            puts "#{a} #{b}"
            exit
        end
    }
    a+=1
end
