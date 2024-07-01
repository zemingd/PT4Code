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
testim=array(N)
N.times do|i|
    a=gets.to_i
    a.times do|j|
        x,y=get_i
        x-=1
        testim[i]=[] if testim[i].nil?
        testim[i].push([x,y])
    end
end
ans=0
(2**N).times do|bit|
    people=array(N,-1)
    flag=true
    N.times do|i|
        unless (bit&(2**i)).zero?
            if people[i]==-1
              people[i]=1
            elsif people[i]!=1
                flag=false
                break
            end
            next if testim[i].nil?
            testim[i].each do|x,y|
              if people[x]==-1
                  people[x]=y
              elsif people[i]==1 and people[x]!=y
                  flag=false
                  break
              end
            end
        else
            if people[i]==-1
                people[i]=0
            elsif people[i]!=0
                flag=false
                break
            end
        end
    end
    if flag
      ans=max(ans,people.count{|x| x==1})
    end
end
puts ans