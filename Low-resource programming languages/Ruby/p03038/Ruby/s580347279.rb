(n,m)=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
bc = ARGF.map {|s|s.split.map(&:to_i) }.sort_by {|v|v[1]}.reverse

bc.each {|n,x|
    (0...n).each{
            if(a[0] <= x )
                a[0]=x
                a.rotate!
            else
                print a.reduce(:+)
                exit 0
            end
        }

    }
print print a.reduce(:+)