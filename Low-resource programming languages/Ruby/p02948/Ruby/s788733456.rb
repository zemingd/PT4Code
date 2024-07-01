n,m=gets.split.map(&:to_i)
jobarray=[]
nitiarray=Array.new(m,0)

n.times{
    jobarray<<gets.split.map(&:to_i)
}

jobarray=jobarray.sort_by{|i| i[1]}.reverse

jobarray.map{|i|
    
    kigen=i[0]
    money=i[1]

    j=m-kigen
    (m-kigen+1).times{
        if nitiarray[j]==0
         nitiarray[j]=money
         break
        end
        j-=1
    }
    
}

puts nitiarray.inject(:+)
