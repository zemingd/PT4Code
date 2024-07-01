class House
        def initialize(f,r)     #floor,room number
                @f = Array.new(f){Array.new(r,0)}
        end

        def move(f,r,v)
                @f[f-1][r-1] += v
        end

        def residents
                str=''
                @f.each{|f|
                        str+=' '
                        f.each{|r|
                                str += r.to_s+' '
                        }
str.chop!
                        str+="\n"
                }
                print str
        end
end

houses = []
4.times{houses << House.new(3,10)}      #4 building

n = gets.to_i
ps = []

n.times{|i|
        ps << gets.split(' ').map(&:to_i)
}

ps.each{|p|
        b=p[0] ; f=p[1] ; r = p[2] ; v = p[3]
        houses[b-1].move(f,r,v)
}

c=0
houses.each{|house|
        print house.residents
        c+=1
        puts "#"*20 unless c==houses.size
}