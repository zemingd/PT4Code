#input of int(split by space)
def get_i()
  return gets.chomp.split(" ").map(&:to_i)
end
#input of float(split by space)
def get_f()
  return gets.chomp.split(" ").map(&:to_f)
end
#input of string(split by space)
def get()
  return gets.chomp.split(" ")
end
#input of string(split per one character)
def get_nsp()
  return gets.chomp.split("")
end
#yes or no decision
def yn_judge(bool,y="Yes",n="No")
  return bool ? y : n 
end
#create of array
def array(size1,init=nil,size2=-1)
  if size2==-1
    return Array.new(size1){init}
  else
    return Array.new(size2){Array.new(size1){init}}
  end
end

def max(a,b)
    return a>b ? a : b
end

def min(a,b)
    return a>b ? b : a
end

INF=Float::INFINITY

N=gets.to_i
L=get_i.sort{|x,y| y<=>x}
#N=10**3
#L=(0..10**3-1).to_a.sort{|x,y| y<=>x}
ans=0
#p L
#(N-2).times do|i|
i=0
while i<N-2
    #(i+1).upto(N-2) do|j|
    j=i+1
    a=L[i]
    while j<N-1
        b=L[j]
        head=j+1
        tail=N
        10.times do
          mid=(head+tail)/2
          if L[mid]>a-b
            head=mid
          else
              tail=mid
          end
        end 
        unless L[head]>a-b
            j+=1
            next
        end
        #puts "i:#{i} j:#{j} head:#{head}"
        ans+=head-j
        j+=1
    end
    i+=1
end
puts ans