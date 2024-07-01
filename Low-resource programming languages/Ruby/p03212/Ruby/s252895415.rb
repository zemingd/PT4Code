# Your code here!
require 'set'

$N=gets.to_i
$ans=0

def ck(num)
    st=Set.new
    while(num>0)
        n=num%10
        st.add(n)
        num/=10
    end
    #puts st.size
    if(st.size>=3)
        return true
    else
        return false
    end
end

def calc(num,f)
    if(num>$N)
        return
    end
    if(!f&&ck(num))
        f=true
    end
    if(f==true)
        $ans=$ans+1
    end
    num*=10
    calc(num+3,f)
    calc(num+5,f)
    calc(num+7,f)
end

calc(0,false)
puts $ans