n = gets.to_i
i = gets.chomp.split(" ").map(&:to_i)
c=[]
if n%2==0
    (n/2).times{|t|
        c.push(i[n-(t*2+1)])
    }
    (n/2).times{|t|
        c.push(i[t*2])
    }
else
    (n/2+1).times{|t|
        c.push(i[n-t*2-1])
    }
    (n/2).times{|t|
        c.push(i[(t+1)*2-1])
    }
end
c.each{|item|
    print item," "
}