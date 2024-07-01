def gcd(x,y)
    return y==0?x:gcd(y,x%y)
end

class PriorityQueue
    @heap
    @size
    @reverse
    def initialize(str)
        @heap = Array.new()
        @size = 0
    end

    def push(x)
        x = x
        i = @size
        @size+=1
        @heap.append(x)
        while i>0 do
            par = (i-1)/2
            break if(@heap[par]<=x)
            @heap[i] = @heap[par]
            i = par
        end

        @heap[i] = x
    end

    def pop()
        ret = @heap[0]
        @size -= 1
        x = @heap[@size]
        i = 0
        while 2*i + 1<@size do
            a = 2*i+1
            b = 2*i+2
            a = b if b<@size and @heap[b] < @heap[a]
            break if @heap[a] >= x

            @heap[i] = @heap[a]
            i = a
        end

        @heap[i] = x
        @heap.pop

        return ret
    end

    def top()
        return @heap[0]
    end

    def size()
        return @size
    end

    def empty()
        return @size == 0
    end
end

class SegmentTree
    @dat
    @sz
    @mono
    def initialize(n,mono)
        @sz = 1
        while @sz < n do
            @sz*=2
        end
        @mono = mono
        @dat = Array.new(2*@sz-1){@mono}
    end

    def f(a,b)
        return gcd(a,b)
    end

    def g(a,b)
        return a+b
    end

    def setval(i,x)
        i += @sz - 1
        @dat[i] = x
        while i>0 do
            i = (i-1)/2
            @dat[i] = f(@dat[2*i+1],@dat[2*i+2])
        end
    end
    
    def update(i,x)
        i += @sz - 1
        @dat[i] = g(@dat[i],x)
        while i>0 do
            i = (i-1)/2
            @dat[i] = f(@dat[2*i+1],@dat[2*i+2])
        end
    end

    def query(l,r)
        l += @sz-1
        r += @sz-1
        vl = @mono.clone
        vr = @mono.clone
        while l<=r do
            
            vl = f(vl,@dat[l]) if l&1==0
            vr = f(@dat[r],vr) if r&1==1
            l>>=1
            r = (r>>1)-1
        end
        return f(vl,vr)
    end
end

#N個の整数 A_1,A_2,...,A_Nが黒板に書かれています。
#あなたはこの中から整数を 1つ選んで、1以上 10^9以下の好きな整数に書き換えます。
#元の整数と同じ整数に書き換えても構いません。書き換えた後の 
#N個の整数の最大公約数の最大値を求めてください。

#input
#N
#A_1 A_2 ... A_N

n = gets.to_i
a = gets.split.map(&:to_i)

seg = SegmentTree.new(n+2,0)
for i in 0...n do
    seg.setval(i+1,a[i])
end
ans = 0
for i in 0...n do
    res = gcd(seg.query(0,i),seg.query(i+2,n+1))
    ans = res if ans<res
end
puts ans
