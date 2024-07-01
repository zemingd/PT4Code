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
ans=0
#p L
(N-2).times do|i|
    (i+1).upto(N-2) do|j|
        head=j+1
        tail=N
        50.times do
          mid=(head+tail)/2
          if L[mid]>L[i]-L[j]
            head=mid
          else
              tail=mid
          end
        end 
        next unless L[head]>L[i]-L[j]
        #puts "i:#{i} j:#{j} head:#{head}"
        ans+=head-j
    end
end
puts ans