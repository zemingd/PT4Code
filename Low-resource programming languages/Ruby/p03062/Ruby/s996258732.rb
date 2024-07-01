DMAX=17

def func(x,n)
    return if n==1
    gcds=[]
    (n/2).times do |i|
        gcds[i]=x[-1][2*i].gcd(x[-1][2*i+1])
    end
    x << gcds
    func(x,n/2)
end

def func2(x,i,level,temp)
    return if level==DMAX
    t=(i>>DMAX-level-1) ^ 1
    temp << x[DMAX-level-1][t]
    func2(x,i,level+1,temp)
end

N=gets.to_i
A=gets.split.map(&:to_i)
A2=Array.new(2**DMAX,A[-1])
A.each_with_index do |a,i|
    A2[i]=a
end
x=Array.new
x << A2
func(x,2**DMAX)
max=0
N.times do |i|
    temp=[]
    func2(x,i,0,temp)
    g=temp.inject(&:gcd)
    max=g if max<g
end
puts max