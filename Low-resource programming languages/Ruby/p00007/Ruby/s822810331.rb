n=gets.to_i
base=100000

n.times{
        base*=1.05
        base=base.to_i
p base
        c=base.to_s
        while true
                if c.length<=3
                        base=(base-c.to_i+1000) if c.to_i != 0
                        break
                end
                c.slice!(0)

        end
}
puts base