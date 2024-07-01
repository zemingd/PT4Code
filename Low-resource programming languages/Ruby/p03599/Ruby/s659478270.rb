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

A,B,C,D,E,F=get_i
water=array(F/100+1,false)
water[0]=true
A.step(F/100,A) do|i|
  water[i]=true
end
(F/100-B+1).times do|i|
  water[i+B]=true if water[i] 
end
suger=array(F,false)
suger[0]=true
C.step(F,C) do|i|
    suger[i]=true
end
(F-D+1).times do|i|
    suger[i+D]=true if suger[i]
end
ans_s=0
ans_w=100
water.each_with_index do|f,w|
    next if not f or w.zero?
    s=0
    min(F-w*100,E*w).downto(0) do|x|
      if suger[x] and x>s
          s=x
      end 
    end
    if ans_s*w*100<=s*ans_w
      ans_s=s
      ans_w=w*100
    else
      break
    end
end
puts [ans_s+ans_w,ans_s].join(" ")